#define X 0
#define Z 0
#define WIDTH 16
#define HEIGHT 32
#define ODD_EVEN 0

int main(int argc, char *argv[]) {
	int notes[HEIGHT][WIDTH] = {0};
	
	for(int x = 0; x < WIDTH; ++ x) {
		for(int z = 0; z < HEIGHT; ++ z) {
			if(x + z % 2 != ODD_EVEN) continue;
		}
	}
	return 0
}