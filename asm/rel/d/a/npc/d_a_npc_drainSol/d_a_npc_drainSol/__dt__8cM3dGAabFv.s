lbl_809ADF60:
/* 809ADF60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809ADF64  7C 08 02 A6 */	mflr r0
/* 809ADF68  90 01 00 14 */	stw r0, 0x14(r1)
/* 809ADF6C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809ADF70  7C 7F 1B 79 */	or. r31, r3, r3
/* 809ADF74  41 82 00 1C */	beq lbl_809ADF90
/* 809ADF78  3C A0 80 9B */	lis r5, __vt__8cM3dGAab@ha
/* 809ADF7C  38 05 FC 1C */	addi r0, r5, __vt__8cM3dGAab@l
/* 809ADF80  90 1F 00 18 */	stw r0, 0x18(r31)
/* 809ADF84  7C 80 07 35 */	extsh. r0, r4
/* 809ADF88  40 81 00 08 */	ble lbl_809ADF90
/* 809ADF8C  4B 92 0D B0 */	b __dl__FPv
lbl_809ADF90:
/* 809ADF90  7F E3 FB 78 */	mr r3, r31
/* 809ADF94  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809ADF98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809ADF9C  7C 08 03 A6 */	mtlr r0
/* 809ADFA0  38 21 00 10 */	addi r1, r1, 0x10
/* 809ADFA4  4E 80 00 20 */	blr 
