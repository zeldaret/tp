/* 800307F0 0002D730  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 800307F4 0002D734  7C 08 02 A6 */ mflr r0
/* 800307F8 0002D738  90 01 00 14 */ stw r0, 0x14(r1)
/* 800307FC 0002D73C  93 E1 00 0C */ stw r31, 0xc(r1)
/* 80030800 0002D740  93 C1 00 08 */ stw r30, 8(r1)
/* 80030804 0002D744  7C 7F 1B 78 */ mr r31, r3
/* 80030808 0002D748  38 7F 00 08 */ addi r3, r31, 8
/*.global mDoExt_bckAnm*/
/* 8003080C 0002D74C  3C 80 80 03 */ lis r4, __ct__13mDoExt_bckAnmFv@ha
/*.global mDoExt_bckAnm*/
/* 80030810 0002D750  38 84 0A 2C */ addi r4, r4, __ct__13mDoExt_bckAnmFv@l
/*.global mDoExt_bckAnm_NS_dtor*/
/* 80030814 0002D754  3C A0 80 03 */ lis r5, mDoExt_bckAnm_NS_dtor@ha
/*.global mDoExt_bckAnm_NS_dtor*/
/* 80030818 0002D758  38 A5 06 A0 */ addi r5, r5, mDoExt_bckAnm_NS_dtor@l
/* 8003081C 0002D75C  38 C0 00 1C */ li r6, 0x1c
/* 80030820 0002D760  38 E0 00 02 */ li r7, 2
/* 80030824 0002D764  48 33 15 3D */ bl func_80361D60
/* 80030828 0002D768  38 7F 00 40 */ addi r3, r31, 0x40
/*.global mDoExt_bpkAnm*/
/* 8003082C 0002D76C  3C 80 80 03 */ lis r4, __ct__13mDoExt_bpkAnmFv@ha
/*.global mDoExt_bpkAnm*/
/* 80030830 0002D770  38 84 09 E4 */ addi r4, r4, __ct__13mDoExt_bpkAnmFv@l
/*.global mDoExt_bpkAnm_NS_dtor*/
/* 80030834 0002D774  3C A0 80 03 */ lis r5, mDoExt_bpkAnm_NS_dtor@ha
/*.global mDoExt_bpkAnm_NS_dtor*/
/* 80030838 0002D778  38 A5 06 F4 */ addi r5, r5, mDoExt_bpkAnm_NS_dtor@l
/* 8003083C 0002D77C  38 C0 00 18 */ li r6, 0x18
/* 80030840 0002D780  38 E0 00 02 */ li r7, 2
/* 80030844 0002D784  48 33 15 1D */ bl func_80361D60
/* 80030848 0002D788  38 7F 00 70 */ addi r3, r31, 0x70
/*.global mDoExt_brkAnm*/
/* 8003084C 0002D78C  3C 80 80 03 */ lis r4, __ct__13mDoExt_brkAnmFv@ha
/*.global mDoExt_brkAnm*/
/* 80030850 0002D790  38 84 09 9C */ addi r4, r4, __ct__13mDoExt_brkAnmFv@l
/*.global mDoExt_brkAnm_NS_dtor*/
/* 80030854 0002D794  3C A0 80 03 */ lis r5, mDoExt_brkAnm_NS_dtor@ha
/*.global mDoExt_brkAnm_NS_dtor*/
/* 80030858 0002D798  38 A5 07 48 */ addi r5, r5, mDoExt_brkAnm_NS_dtor@l
/* 8003085C 0002D79C  38 C0 00 18 */ li r6, 0x18
/* 80030860 0002D7A0  38 E0 00 02 */ li r7, 2
/* 80030864 0002D7A4  48 33 14 FD */ bl func_80361D60
/* 80030868 0002D7A8  38 7F 00 A0 */ addi r3, r31, 0xa0
/*.global mDoExt_brkAnm*/
/* 8003086C 0002D7AC  3C 80 80 03 */ lis r4, __ct__13mDoExt_brkAnmFv@ha
/*.global mDoExt_brkAnm*/
/* 80030870 0002D7B0  38 84 09 9C */ addi r4, r4, __ct__13mDoExt_brkAnmFv@l
/*.global mDoExt_brkAnm_NS_dtor*/
/* 80030874 0002D7B4  3C A0 80 03 */ lis r5, mDoExt_brkAnm_NS_dtor@ha
/*.global mDoExt_brkAnm_NS_dtor*/
/* 80030878 0002D7B8  38 A5 07 48 */ addi r5, r5, mDoExt_brkAnm_NS_dtor@l
/* 8003087C 0002D7BC  38 C0 00 18 */ li r6, 0x18
/* 80030880 0002D7C0  38 E0 00 02 */ li r7, 2
/* 80030884 0002D7C4  48 33 14 DD */ bl func_80361D60
/* 80030888 0002D7C8  38 7F 00 D0 */ addi r3, r31, 0xd0
/*.global mDoExt_btkAnm*/
/* 8003088C 0002D7CC  3C 80 80 03 */ lis r4, __ct__13mDoExt_btkAnmFv@ha
/*.global mDoExt_btkAnm*/
/* 80030890 0002D7D0  38 84 09 54 */ addi r4, r4, __ct__13mDoExt_btkAnmFv@l
/*.global mDoExt_btkAnm_NS_dtor*/
/* 80030894 0002D7D4  3C A0 80 03 */ lis r5, mDoExt_btkAnm_NS_dtor@ha
/*.global mDoExt_btkAnm_NS_dtor*/
/* 80030898 0002D7D8  38 A5 07 9C */ addi r5, r5, mDoExt_btkAnm_NS_dtor@l
/* 8003089C 0002D7DC  38 C0 00 18 */ li r6, 0x18
/* 800308A0 0002D7E0  38 E0 00 02 */ li r7, 2
/* 800308A4 0002D7E4  48 33 14 BD */ bl func_80361D60
/* 800308A8 0002D7E8  3B DF 01 00 */ addi r30, r31, 0x100
/* 800308AC 0002D7EC  3C 60 80 3A */ lis r3, lbl_803A3354@ha
/* 800308B0 0002D7F0  38 03 33 54 */ addi r0, r3, lbl_803A3354@l
/* 800308B4 0002D7F4  90 1F 01 00 */ stw r0, 0x100(r31)
/* 800308B8 0002D7F8  7F C3 F3 78 */ mr r3, r30
/* 800308BC 0002D7FC  38 80 00 00 */ li r4, 0
/* 800308C0 0002D800  48 2F 7B 3D */ bl J3DFrameCtrl_NS_init
/* 800308C4 0002D804  38 00 00 00 */ li r0, 0
/* 800308C8 0002D808  90 1E 00 18 */ stw r0, 0x18(r30)
/* 800308CC 0002D80C  3B DF 01 1C */ addi r30, r31, 0x11c
/* 800308D0 0002D810  3C 60 80 3A */ lis r3, lbl_803A3354@ha
/* 800308D4 0002D814  38 03 33 54 */ addi r0, r3, lbl_803A3354@l
/* 800308D8 0002D818  90 1F 01 1C */ stw r0, 0x11c(r31)
/* 800308DC 0002D81C  7F C3 F3 78 */ mr r3, r30
/* 800308E0 0002D820  38 80 00 00 */ li r4, 0
/* 800308E4 0002D824  48 2F 7B 19 */ bl J3DFrameCtrl_NS_init
/* 800308E8 0002D828  38 00 00 00 */ li r0, 0
/* 800308EC 0002D82C  90 1E 00 14 */ stw r0, 0x14(r30)
/* 800308F0 0002D830  3B DF 01 34 */ addi r30, r31, 0x134
/* 800308F4 0002D834  3C 60 80 3A */ lis r3, lbl_803A3354@ha
/* 800308F8 0002D838  38 03 33 54 */ addi r0, r3, lbl_803A3354@l
/* 800308FC 0002D83C  90 1F 01 34 */ stw r0, 0x134(r31)
/* 80030900 0002D840  7F C3 F3 78 */ mr r3, r30
/* 80030904 0002D844  38 80 00 00 */ li r4, 0
/* 80030908 0002D848  48 2F 7A F5 */ bl J3DFrameCtrl_NS_init
/* 8003090C 0002D84C  38 00 00 00 */ li r0, 0
/* 80030910 0002D850  90 1E 00 14 */ stw r0, 0x14(r30)
/* 80030914 0002D854  3B DF 01 4C */ addi r30, r31, 0x14c
/* 80030918 0002D858  3C 60 80 3A */ lis r3, lbl_803A3354@ha
/* 8003091C 0002D85C  38 03 33 54 */ addi r0, r3, lbl_803A3354@l
/* 80030920 0002D860  90 1F 01 4C */ stw r0, 0x14c(r31)
/* 80030924 0002D864  7F C3 F3 78 */ mr r3, r30
/* 80030928 0002D868  38 80 00 00 */ li r4, 0
/* 8003092C 0002D86C  48 2F 7A D1 */ bl J3DFrameCtrl_NS_init
/* 80030930 0002D870  38 00 00 00 */ li r0, 0
/* 80030934 0002D874  90 1E 00 14 */ stw r0, 0x14(r30)
/* 80030938 0002D878  7F E3 FB 78 */ mr r3, r31
/* 8003093C 0002D87C  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 80030940 0002D880  83 C1 00 08 */ lwz r30, 8(r1)
/* 80030944 0002D884  80 01 00 14 */ lwz r0, 0x14(r1)
/* 80030948 0002D888  7C 08 03 A6 */ mtlr r0
/* 8003094C 0002D88C  38 21 00 10 */ addi r1, r1, 0x10
/* 80030950 0002D890  4E 80 00 20 */ blr