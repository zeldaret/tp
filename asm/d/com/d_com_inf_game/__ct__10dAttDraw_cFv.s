lbl_800307F0:
/* 800307F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800307F4  7C 08 02 A6 */	mflr r0
/* 800307F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 800307FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80030800  93 C1 00 08 */	stw r30, 8(r1)
/* 80030804  7C 7F 1B 78 */	mr r31, r3
/* 80030808  38 7F 00 08 */	addi r3, r31, 8
/* 8003080C  3C 80 80 03 */	lis r4, __ct__13mDoExt_bckAnmFv@ha
/* 80030810  38 84 0A 2C */	addi r4, r4, __ct__13mDoExt_bckAnmFv@l
/* 80030814  3C A0 80 03 */	lis r5, __dt__13mDoExt_bckAnmFv@ha
/* 80030818  38 A5 06 A0 */	addi r5, r5, __dt__13mDoExt_bckAnmFv@l
/* 8003081C  38 C0 00 1C */	li r6, 0x1c
/* 80030820  38 E0 00 02 */	li r7, 2
/* 80030824  48 33 15 3D */	bl __construct_array
/* 80030828  38 7F 00 40 */	addi r3, r31, 0x40
/* 8003082C  3C 80 80 03 */	lis r4, __ct__13mDoExt_bpkAnmFv@ha
/* 80030830  38 84 09 E4 */	addi r4, r4, __ct__13mDoExt_bpkAnmFv@l
/* 80030834  3C A0 80 03 */	lis r5, __dt__13mDoExt_bpkAnmFv@ha
/* 80030838  38 A5 06 F4 */	addi r5, r5, __dt__13mDoExt_bpkAnmFv@l
/* 8003083C  38 C0 00 18 */	li r6, 0x18
/* 80030840  38 E0 00 02 */	li r7, 2
/* 80030844  48 33 15 1D */	bl __construct_array
/* 80030848  38 7F 00 70 */	addi r3, r31, 0x70
/* 8003084C  3C 80 80 03 */	lis r4, __ct__13mDoExt_brkAnmFv@ha
/* 80030850  38 84 09 9C */	addi r4, r4, __ct__13mDoExt_brkAnmFv@l
/* 80030854  3C A0 80 03 */	lis r5, __dt__13mDoExt_brkAnmFv@ha
/* 80030858  38 A5 07 48 */	addi r5, r5, __dt__13mDoExt_brkAnmFv@l
/* 8003085C  38 C0 00 18 */	li r6, 0x18
/* 80030860  38 E0 00 02 */	li r7, 2
/* 80030864  48 33 14 FD */	bl __construct_array
/* 80030868  38 7F 00 A0 */	addi r3, r31, 0xa0
/* 8003086C  3C 80 80 03 */	lis r4, __ct__13mDoExt_brkAnmFv@ha
/* 80030870  38 84 09 9C */	addi r4, r4, __ct__13mDoExt_brkAnmFv@l
/* 80030874  3C A0 80 03 */	lis r5, __dt__13mDoExt_brkAnmFv@ha
/* 80030878  38 A5 07 48 */	addi r5, r5, __dt__13mDoExt_brkAnmFv@l
/* 8003087C  38 C0 00 18 */	li r6, 0x18
/* 80030880  38 E0 00 02 */	li r7, 2
/* 80030884  48 33 14 DD */	bl __construct_array
/* 80030888  38 7F 00 D0 */	addi r3, r31, 0xd0
/* 8003088C  3C 80 80 03 */	lis r4, __ct__13mDoExt_btkAnmFv@ha
/* 80030890  38 84 09 54 */	addi r4, r4, __ct__13mDoExt_btkAnmFv@l
/* 80030894  3C A0 80 03 */	lis r5, __dt__13mDoExt_btkAnmFv@ha
/* 80030898  38 A5 07 9C */	addi r5, r5, __dt__13mDoExt_btkAnmFv@l
/* 8003089C  38 C0 00 18 */	li r6, 0x18
/* 800308A0  38 E0 00 02 */	li r7, 2
/* 800308A4  48 33 14 BD */	bl __construct_array
/* 800308A8  3B DF 01 00 */	addi r30, r31, 0x100
/* 800308AC  3C 60 80 3A */	lis r3, __vt__12J3DFrameCtrl@ha
/* 800308B0  38 03 33 54 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 800308B4  90 1F 01 00 */	stw r0, 0x100(r31)
/* 800308B8  7F C3 F3 78 */	mr r3, r30
/* 800308BC  38 80 00 00 */	li r4, 0
/* 800308C0  48 2F 7B 3D */	bl init__12J3DFrameCtrlFs
/* 800308C4  38 00 00 00 */	li r0, 0
/* 800308C8  90 1E 00 18 */	stw r0, 0x18(r30)
/* 800308CC  3B DF 01 1C */	addi r30, r31, 0x11c
/* 800308D0  3C 60 80 3A */	lis r3, __vt__12J3DFrameCtrl@ha
/* 800308D4  38 03 33 54 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 800308D8  90 1F 01 1C */	stw r0, 0x11c(r31)
/* 800308DC  7F C3 F3 78 */	mr r3, r30
/* 800308E0  38 80 00 00 */	li r4, 0
/* 800308E4  48 2F 7B 19 */	bl init__12J3DFrameCtrlFs
/* 800308E8  38 00 00 00 */	li r0, 0
/* 800308EC  90 1E 00 14 */	stw r0, 0x14(r30)
/* 800308F0  3B DF 01 34 */	addi r30, r31, 0x134
/* 800308F4  3C 60 80 3A */	lis r3, __vt__12J3DFrameCtrl@ha
/* 800308F8  38 03 33 54 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 800308FC  90 1F 01 34 */	stw r0, 0x134(r31)
/* 80030900  7F C3 F3 78 */	mr r3, r30
/* 80030904  38 80 00 00 */	li r4, 0
/* 80030908  48 2F 7A F5 */	bl init__12J3DFrameCtrlFs
/* 8003090C  38 00 00 00 */	li r0, 0
/* 80030910  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80030914  3B DF 01 4C */	addi r30, r31, 0x14c
/* 80030918  3C 60 80 3A */	lis r3, __vt__12J3DFrameCtrl@ha
/* 8003091C  38 03 33 54 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80030920  90 1F 01 4C */	stw r0, 0x14c(r31)
/* 80030924  7F C3 F3 78 */	mr r3, r30
/* 80030928  38 80 00 00 */	li r4, 0
/* 8003092C  48 2F 7A D1 */	bl init__12J3DFrameCtrlFs
/* 80030930  38 00 00 00 */	li r0, 0
/* 80030934  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80030938  7F E3 FB 78 */	mr r3, r31
/* 8003093C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80030940  83 C1 00 08 */	lwz r30, 8(r1)
/* 80030944  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80030948  7C 08 03 A6 */	mtlr r0
/* 8003094C  38 21 00 10 */	addi r1, r1, 0x10
/* 80030950  4E 80 00 20 */	blr 
