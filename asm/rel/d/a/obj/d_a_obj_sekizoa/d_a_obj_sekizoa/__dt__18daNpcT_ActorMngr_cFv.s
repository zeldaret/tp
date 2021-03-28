lbl_80CD4C48:
/* 80CD4C48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CD4C4C  7C 08 02 A6 */	mflr r0
/* 80CD4C50  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CD4C54  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CD4C58  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CD4C5C  41 82 00 1C */	beq lbl_80CD4C78
/* 80CD4C60  3C A0 80 CD */	lis r5, __vt__18daNpcT_ActorMngr_c@ha
/* 80CD4C64  38 05 67 CC */	addi r0, r5, __vt__18daNpcT_ActorMngr_c@l
/* 80CD4C68  90 1F 00 04 */	stw r0, 4(r31)
/* 80CD4C6C  7C 80 07 35 */	extsh. r0, r4
/* 80CD4C70  40 81 00 08 */	ble lbl_80CD4C78
/* 80CD4C74  4B 5F A0 C8 */	b __dl__FPv
lbl_80CD4C78:
/* 80CD4C78  7F E3 FB 78 */	mr r3, r31
/* 80CD4C7C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CD4C80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CD4C84  7C 08 03 A6 */	mtlr r0
/* 80CD4C88  38 21 00 10 */	addi r1, r1, 0x10
/* 80CD4C8C  4E 80 00 20 */	blr 
