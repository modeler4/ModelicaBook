.. _array-functions:

Array Functions
---------------

There are a great many functions in Modelica that are related to
arrays.  In this section, we'll go through different categories of
functions and describe how they are used.

.. _array-construction-functions:

Construction
^^^^^^^^^^^^

We already talked about :ref:`array-construction`.  We saw the
different syntactic constructs that can be used to build vectors and
matrices.  Furthermore, we saw how matrices can be built from other
matrices.  There are several functions in Modelica that can be used
for constructing vectors, matrices and higher-dimension arrays as both
an alternative or complement to those previous presented.


.. _fill-function:

``fill``
~~~~~~~~

.. index:: fill
.. index:: functions; fill

The ``fill`` function is used to create an array where each element in
the array has the same value.  The arguments for ``fill`` are:

.. code-block:: modelica

    fill(v, d1, d2, ..., dN)

where ``v`` is the value to be given to each element in the array and
the remaining arguments are the sizes of each dimension.  The elements
in the resulting array will have the same type as ``v``.  So, to fill
a 5x7 array of reals with the value ``1.7``, we could use the
following:

.. code-block:: modelica

    parameter Real x[5,7] = fill(1.7, 5, 7);

This would result in a matrix filled as follows:

.. math::

    \left[
    \begin{array}{ccccccc}
    1.7 & 1.7 & 1.7 & 1.7 & 1.7 & 1.7 & 1.7 \\
    1.7 & 1.7 & 1.7 & 1.7 & 1.7 & 1.7 & 1.7 \\
    1.7 & 1.7 & 1.7 & 1.7 & 1.7 & 1.7 & 1.7 \\
    1.7 & 1.7 & 1.7 & 1.7 & 1.7 & 1.7 & 1.7 \\
    1.7 & 1.7 & 1.7 & 1.7 & 1.7 & 1.7 & 1.7
    \end{array}
    \right]

.. _zeros-function:

``zeros``
~~~~~~~~~

.. index:: zeros
.. index:: functions; zeros

When working with arrays, a common use case is to create an array that
contains only zero elements.  This is essentially the same
functionality as the ``fill`` function, but since the value is known
it is only necessary to specify the sizes.  Using ``zeros`` we can
initialize an array as follows:

.. code-block:: modelica

    parameter Real y[2,3,5] = zeros(2, 3, 5);

``ones``
~~~~~~~~

.. index:: ones
.. index:: functions; ones

The ``ones`` function is identical to the ``zeros`` function except
that every element in the resulting array has the value :math:`1`.
So, for example:

.. code-block:: modelica

    parameter Real z[3,5] = ones(3, 5);

This would result in a matrix filled as follows:

.. math::

    \left[
    \begin{array}{ccccc}
    1 & 1 & 1 & 1 & 1 \\
    1 & 1 & 1 & 1 & 1 \\
    1 & 1 & 1 & 1 & 1
    \end{array}
    \right]

``identity``
~~~~~~~~~~~~

.. index:: identity
.. index:: functions; identity

Another common need is to easily build an identity matrix, one whose
diagonal elements are all :math:`1` while all other elements are
:math:`0`.  This can be done very easily with the ``identity``.  The
identity function takes a single integer argument.  This argument
determines the number of rows and columns in the resulting matrix.
So, invoking ``identity`` as:

.. code-block:: modelica

    identity(5);

would produce the following matrix:

.. math::

    \left[
    \begin{array}{ccccc}
    1 & 0 & 0 & 0 & 0 \\
    0 & 1 & 0 & 0 & 0 \\
    0 & 0 & 1 & 0 & 0 \\
    0 & 0 & 0 & 1 & 0 \\
    0 & 0 & 0 & 0 & 1 \\
    \end{array}
    \right]


``diagonal``
~~~~~~~~~~~~

.. index:: diagonal
.. index:: functions; diagonal

The ``diagonal`` function is used to create a matrix where all
non-diagonal elements are :math:`0`.  The only argument to diagonal is
an array containing the values of the diagonal elements.   So, to
create the following diagonal matrix:

.. math::

    \left[
    \begin{array}{cccc}
    2.0 & 0 & 0 & 0 \\
    0 & 3.0 & 0 & 0 \\
    0 & 0 & 4.0 & 0 \\
    0 & 0 & 0 & 5.0
    \end{array}
    \right]

one could use the following Modelica code:

.. code-block:: modelica

    diagonal({2.0, 3.0, 4.0, 5.0});

``linspace``
~~~~~~~~~~~~

.. index:: linspace
.. index:: functions; linspace

The ``linspace`` function builds a vector where the values of the
elements are all linearly distributed over an interval.  The
``linspace`` function is invoked as follows:

.. code-block:: modelica

    linspace(v0, v1, n);

where ``v0`` is the value of the first elements in the vector, ``v1``
is the last element in the vector and ``n`` is the total number of
values in the vector.  So, for example, invoking ``linspace`` as:

.. code-block:: modelica

    linspace(1.0, 5.0, 9);

would yield the vector:

.. code-block:: modelica

    {1.0, 1.5, 2.0, 3.5, 3.0, 3.5, 4.0, 4.5, 5.0}

.. todo:: Document these functions

Conversion
^^^^^^^^^^

* Converting matrices, vectors and arrays

Operators
^^^^^^^^^

* +,*,-,/, element-wise


Miscellaneous Functions
^^^^^^^^^^^^^^^^^^^^^^^

``ndims``
~~~~~~~~~

.. index:: ndims
.. index:: functions; ndims

``size``
~~~~~~~~

.. index:: size
.. index:: functions; size

``min``
~~~~~~~

.. index:: min (vector)
.. index:: functions; min (vector)

``max``
~~~~~~~

.. index:: max (vector)
.. index:: functions; max (vector)

``sum``
~~~~~~~

.. index:: sum
.. index:: functions; sum

``product``
~~~~~~~~~~~

.. index:: product
.. index:: functions; product


.. _vectorization:

Vectorization
^^^^^^^^^^^^^

.. index:: vectorization
.. index:: functions; vectorization
.. index:: equations; of vectors

* Vectorization

* Discuss arithmetic operators and how they are applied to vectors

* Equations?
