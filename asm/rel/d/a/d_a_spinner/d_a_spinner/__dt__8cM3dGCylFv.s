lbl_804D1D60:
/* 804D1D60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D1D64  7C 08 02 A6 */	mflr r0
/* 804D1D68  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D1D6C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804D1D70  7C 7F 1B 79 */	or. r31, r3, r3
/* 804D1D74  41 82 00 1C */	beq lbl_804D1D90
/* 804D1D78  3C A0 80 4D */	lis r5, __vt__8cM3dGCyl@ha
/* 804D1D7C  38 05 4F 78 */	addi r0, r5, __vt__8cM3dGCyl@l
/* 804D1D80  90 1F 00 14 */	stw r0, 0x14(r31)
/* 804D1D84  7C 80 07 35 */	extsh. r0, r4
/* 804D1D88  40 81 00 08 */	ble lbl_804D1D90
/* 804D1D8C  4B DF CF B0 */	b __dl__FPv
lbl_804D1D90:
/* 804D1D90  7F E3 FB 78 */	mr r3, r31
/* 804D1D94  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804D1D98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D1D9C  7C 08 03 A6 */	mtlr r0
/* 804D1DA0  38 21 00 10 */	addi r1, r1, 0x10
/* 804D1DA4  4E 80 00 20 */	blr 
