lbl_80ACEDE8:
/* 80ACEDE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80ACEDEC  7C 08 02 A6 */	mflr r0
/* 80ACEDF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80ACEDF4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80ACEDF8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80ACEDFC  41 82 00 1C */	beq lbl_80ACEE18
/* 80ACEE00  3C A0 80 AD */	lis r5, __vt__18daNpcT_ActorMngr_c@ha /* 0x80AD09F0@ha */
/* 80ACEE04  38 05 09 F0 */	addi r0, r5, __vt__18daNpcT_ActorMngr_c@l /* 0x80AD09F0@l */
/* 80ACEE08  90 1F 00 04 */	stw r0, 4(r31)
/* 80ACEE0C  7C 80 07 35 */	extsh. r0, r4
/* 80ACEE10  40 81 00 08 */	ble lbl_80ACEE18
/* 80ACEE14  4B 7F FF 29 */	bl __dl__FPv
lbl_80ACEE18:
/* 80ACEE18  7F E3 FB 78 */	mr r3, r31
/* 80ACEE1C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80ACEE20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80ACEE24  7C 08 03 A6 */	mtlr r0
/* 80ACEE28  38 21 00 10 */	addi r1, r1, 0x10
/* 80ACEE2C  4E 80 00 20 */	blr 
