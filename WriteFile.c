#include <stdio.h>
#include <stdlib.h>

#include "WriteFile.h"

#define MAX_STR_SIZE 200

void fill_in_file(char *filename, grid_t *to_write, dimension_t *dim)
{
    FILE *fp = fopen(filename, "a");

    fprintf (fp, "WYNIK\n");
    for(int i=1; i<(dim->rows)-1; ++i)
    {
        for(int j=1; j<(dim->columns)-1; ++j)
        {
            fprintf (fp, "%c", to_write->cells[i][j]);
        }
        fprintf(fp, "\n");
    }
    fclose( fp );

}