#ifndef WRITEFILE_H_INCLUDED
#define WRITEFILE_H_INCLUDED

#include "Game.h"

void print_to_screen(int n, grid_t *to_write, dimension_t *dim);
void fill_in_file(int n, char *filename, grid_t *to_write, dimension_t *dim);

#endif // WRITEFILE_H_INCLUDED
