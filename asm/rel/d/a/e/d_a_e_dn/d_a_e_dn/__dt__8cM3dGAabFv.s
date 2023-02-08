lbl_804EE07C:
/* 804EE07C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804EE080  7C 08 02 A6 */	mflr r0
/* 804EE084  90 01 00 14 */	stw r0, 0x14(r1)
/* 804EE088  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804EE08C  7C 7F 1B 79 */	or. r31, r3, r3
/* 804EE090  41 82 00 1C */	beq lbl_804EE0AC
/* 804EE094  3C A0 80 4F */	lis r5, __vt__8cM3dGAab@ha /* 0x804EEE78@ha */
/* 804EE098  38 05 EE 78 */	addi r0, r5, __vt__8cM3dGAab@l /* 0x804EEE78@l */
/* 804EE09C  90 1F 00 18 */	stw r0, 0x18(r31)
/* 804EE0A0  7C 80 07 35 */	extsh. r0, r4
/* 804EE0A4  40 81 00 08 */	ble lbl_804EE0AC
/* 804EE0A8  4B DE 0C 95 */	bl __dl__FPv
lbl_804EE0AC:
/* 804EE0AC  7F E3 FB 78 */	mr r3, r31
/* 804EE0B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804EE0B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804EE0B8  7C 08 03 A6 */	mtlr r0
/* 804EE0BC  38 21 00 10 */	addi r1, r1, 0x10
/* 804EE0C0  4E 80 00 20 */	blr 
