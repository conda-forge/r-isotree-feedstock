#!/bin/bash

## use fixed Makevars
rm configure src/Makevars.in
cp Makevars src/.

export DISABLE_AUTOBREW=1
${R} CMD INSTALL --build . ${R_ARGS}
