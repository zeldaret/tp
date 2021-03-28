lbl_804D1E4C:
/* 804D1E4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D1E50  7C 08 02 A6 */	mflr r0
/* 804D1E54  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D1E58  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804D1E5C  7C 7F 1B 79 */	or. r31, r3, r3
/* 804D1E60  41 82 00 10 */	beq lbl_804D1E70
/* 804D1E64  7C 80 07 35 */	extsh. r0, r4
/* 804D1E68  40 81 00 08 */	ble lbl_804D1E70
/* 804D1E6C  4B DF CE D0 */	b __dl__FPv
lbl_804D1E70:
/* 804D1E70  7F E3 FB 78 */	mr r3, r31
/* 804D1E74  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804D1E78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D1E7C  7C 08 03 A6 */	mtlr r0
/* 804D1E80  38 21 00 10 */	addi r1, r1, 0x10
/* 804D1E84  4E 80 00 20 */	blr 
