lbl_80AC8DDC:
/* 80AC8DDC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AC8DE0  7C 08 02 A6 */	mflr r0
/* 80AC8DE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AC8DE8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AC8DEC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AC8DF0  41 82 00 1C */	beq lbl_80AC8E0C
/* 80AC8DF4  3C A0 80 AD */	lis r5, __vt__18daNpcT_ActorMngr_c@ha
/* 80AC8DF8  38 05 94 90 */	addi r0, r5, __vt__18daNpcT_ActorMngr_c@l
/* 80AC8DFC  90 1F 00 04 */	stw r0, 4(r31)
/* 80AC8E00  7C 80 07 35 */	extsh. r0, r4
/* 80AC8E04  40 81 00 08 */	ble lbl_80AC8E0C
/* 80AC8E08  4B 80 5F 34 */	b __dl__FPv
lbl_80AC8E0C:
/* 80AC8E0C  7F E3 FB 78 */	mr r3, r31
/* 80AC8E10  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AC8E14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AC8E18  7C 08 03 A6 */	mtlr r0
/* 80AC8E1C  38 21 00 10 */	addi r1, r1, 0x10
/* 80AC8E20  4E 80 00 20 */	blr 
