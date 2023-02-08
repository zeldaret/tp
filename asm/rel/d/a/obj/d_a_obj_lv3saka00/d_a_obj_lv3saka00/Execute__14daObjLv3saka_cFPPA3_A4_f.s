lbl_80C5C0FC:
/* 80C5C0FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C5C100  7C 08 02 A6 */	mflr r0
/* 80C5C104  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C5C108  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C5C10C  93 C1 00 08 */	stw r30, 8(r1)
/* 80C5C110  7C 7E 1B 78 */	mr r30, r3
/* 80C5C114  7C 9F 23 78 */	mr r31, r4
/* 80C5C118  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C5C11C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C5C120  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80C5C124  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80C5C128  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80C5C12C  7C 05 07 74 */	extsb r5, r0
/* 80C5C130  4B 3D 92 31 */	bl isSwitch__10dSv_info_cCFii
/* 80C5C134  2C 03 00 00 */	cmpwi r3, 0
/* 80C5C138  41 82 00 10 */	beq lbl_80C5C148
/* 80C5C13C  7F C3 F3 78 */	mr r3, r30
/* 80C5C140  48 00 00 B9 */	bl setWtrDzb__14daObjLv3saka_cFv
/* 80C5C144  48 00 00 0C */	b lbl_80C5C150
lbl_80C5C148:
/* 80C5C148  7F C3 F3 78 */	mr r3, r30
/* 80C5C14C  48 00 00 31 */	bl setNrmDzb__14daObjLv3saka_cFv
lbl_80C5C150:
/* 80C5C150  38 1E 05 6C */	addi r0, r30, 0x56c
/* 80C5C154  90 1F 00 00 */	stw r0, 0(r31)
/* 80C5C158  7F C3 F3 78 */	mr r3, r30
/* 80C5C15C  4B FF FD 1D */	bl setBaseMtx__14daObjLv3saka_cFv
/* 80C5C160  38 60 00 01 */	li r3, 1
/* 80C5C164  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C5C168  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C5C16C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C5C170  7C 08 03 A6 */	mtlr r0
/* 80C5C174  38 21 00 10 */	addi r1, r1, 0x10
/* 80C5C178  4E 80 00 20 */	blr 
