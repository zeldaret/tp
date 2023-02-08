lbl_80121214:
/* 80121214  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80121218  7C 08 02 A6 */	mflr r0
/* 8012121C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80121220  39 61 00 20 */	addi r11, r1, 0x20
/* 80121224  48 24 0F B9 */	bl _savegpr_29
/* 80121228  7C 7F 1B 78 */	mr r31, r3
/* 8012122C  3B BF 1F E8 */	addi r29, r31, 0x1fe8
/* 80121230  7F A3 EB 78 */	mr r3, r29
/* 80121234  54 9E 20 36 */	slwi r30, r4, 4
/* 80121238  3C 80 80 39 */	lis r4, l_wolfFootOnFrame@ha /* 0x8038FB5C@ha */
/* 8012123C  38 84 FB 5C */	addi r4, r4, l_wolfFootOnFrame@l /* 0x8038FB5C@l */
/* 80121240  7C 24 F4 2E */	lfsx f1, r4, r30
/* 80121244  48 20 71 E9 */	bl checkPass__12J3DFrameCtrlFf
/* 80121248  2C 03 00 00 */	cmpwi r3, 0
/* 8012124C  41 82 00 14 */	beq lbl_80121260
/* 80121250  80 1F 05 84 */	lwz r0, 0x584(r31)
/* 80121254  60 00 00 04 */	ori r0, r0, 4
/* 80121258  90 1F 05 84 */	stw r0, 0x584(r31)
/* 8012125C  48 00 00 90 */	b lbl_801212EC
lbl_80121260:
/* 80121260  7F A3 EB 78 */	mr r3, r29
/* 80121264  3C 80 80 39 */	lis r4, l_wolfFootOnFrame@ha /* 0x8038FB5C@ha */
/* 80121268  38 04 FB 5C */	addi r0, r4, l_wolfFootOnFrame@l /* 0x8038FB5C@l */
/* 8012126C  7C 80 F2 14 */	add r4, r0, r30
/* 80121270  C0 24 00 04 */	lfs f1, 4(r4)
/* 80121274  48 20 71 B9 */	bl checkPass__12J3DFrameCtrlFf
/* 80121278  2C 03 00 00 */	cmpwi r3, 0
/* 8012127C  41 82 00 14 */	beq lbl_80121290
/* 80121280  80 1F 05 84 */	lwz r0, 0x584(r31)
/* 80121284  60 00 00 08 */	ori r0, r0, 8
/* 80121288  90 1F 05 84 */	stw r0, 0x584(r31)
/* 8012128C  48 00 00 60 */	b lbl_801212EC
lbl_80121290:
/* 80121290  7F A3 EB 78 */	mr r3, r29
/* 80121294  3C 80 80 39 */	lis r4, l_wolfFootOnFrame@ha /* 0x8038FB5C@ha */
/* 80121298  38 04 FB 5C */	addi r0, r4, l_wolfFootOnFrame@l /* 0x8038FB5C@l */
/* 8012129C  7C 80 F2 14 */	add r4, r0, r30
/* 801212A0  C0 24 00 08 */	lfs f1, 8(r4)
/* 801212A4  48 20 71 89 */	bl checkPass__12J3DFrameCtrlFf
/* 801212A8  2C 03 00 00 */	cmpwi r3, 0
/* 801212AC  41 82 00 14 */	beq lbl_801212C0
/* 801212B0  80 1F 05 84 */	lwz r0, 0x584(r31)
/* 801212B4  60 00 00 10 */	ori r0, r0, 0x10
/* 801212B8  90 1F 05 84 */	stw r0, 0x584(r31)
/* 801212BC  48 00 00 30 */	b lbl_801212EC
lbl_801212C0:
/* 801212C0  7F A3 EB 78 */	mr r3, r29
/* 801212C4  3C 80 80 39 */	lis r4, l_wolfFootOnFrame@ha /* 0x8038FB5C@ha */
/* 801212C8  38 04 FB 5C */	addi r0, r4, l_wolfFootOnFrame@l /* 0x8038FB5C@l */
/* 801212CC  7C 80 F2 14 */	add r4, r0, r30
/* 801212D0  C0 24 00 0C */	lfs f1, 0xc(r4)
/* 801212D4  48 20 71 59 */	bl checkPass__12J3DFrameCtrlFf
/* 801212D8  2C 03 00 00 */	cmpwi r3, 0
/* 801212DC  41 82 00 10 */	beq lbl_801212EC
/* 801212E0  80 1F 05 84 */	lwz r0, 0x584(r31)
/* 801212E4  60 00 00 20 */	ori r0, r0, 0x20
/* 801212E8  90 1F 05 84 */	stw r0, 0x584(r31)
lbl_801212EC:
/* 801212EC  39 61 00 20 */	addi r11, r1, 0x20
/* 801212F0  48 24 0F 39 */	bl _restgpr_29
/* 801212F4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801212F8  7C 08 03 A6 */	mtlr r0
/* 801212FC  38 21 00 20 */	addi r1, r1, 0x20
/* 80121300  4E 80 00 20 */	blr 
