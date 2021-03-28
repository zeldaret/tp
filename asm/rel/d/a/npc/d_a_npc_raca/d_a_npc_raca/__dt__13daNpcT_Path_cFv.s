lbl_80AB8088:
/* 80AB8088  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AB808C  7C 08 02 A6 */	mflr r0
/* 80AB8090  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AB8094  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AB8098  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AB809C  41 82 00 1C */	beq lbl_80AB80B8
/* 80AB80A0  3C A0 80 AC */	lis r5, __vt__13daNpcT_Path_c@ha
/* 80AB80A4  38 05 94 48 */	addi r0, r5, __vt__13daNpcT_Path_c@l
/* 80AB80A8  90 1F 00 24 */	stw r0, 0x24(r31)
/* 80AB80AC  7C 80 07 35 */	extsh. r0, r4
/* 80AB80B0  40 81 00 08 */	ble lbl_80AB80B8
/* 80AB80B4  4B 81 6C 88 */	b __dl__FPv
lbl_80AB80B8:
/* 80AB80B8  7F E3 FB 78 */	mr r3, r31
/* 80AB80BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AB80C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AB80C4  7C 08 03 A6 */	mtlr r0
/* 80AB80C8  38 21 00 10 */	addi r1, r1, 0x10
/* 80AB80CC  4E 80 00 20 */	blr 
