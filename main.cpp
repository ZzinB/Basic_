#include "cv.hpp"
#include <iostream>
using namespace cv;
using namespace std;
int main() {
    Mat frame;
    VideoCapture cap;
    int minute;

    if (cap.open("background.mp4") == 0) {
        cout << "no such file!" << endl;
        waitKey(0);
    }
    while (1) {
        cap >> frame;
        if (minute == 3000) {
            cout << "end of video" << endl;
            break;
        }
    imshow("video", frame);
    minute = cap.get(CAP_PROP_POS_MSEC);
    int frames = cap.get(CAP_PROP_POS_FRAMES); 
    int total_frames = cap.get(CAP_PROP_FRAME_COUNT);
    printf("Frames : %d / %d \n", frames, total_frames);
    waitKey(33);
    }
}