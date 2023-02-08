lbl_80B72E18:
/* 80B72E18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B72E1C  7C 08 02 A6 */	mflr r0
/* 80B72E20  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B72E24  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B72E28  93 C1 00 08 */	stw r30, 8(r1)
/* 80B72E2C  7C 7E 1B 78 */	mr r30, r3
/* 80B72E30  80 03 0B 58 */	lwz r0, 0xb58(r3)
/* 80B72E34  2C 00 00 01 */	cmpwi r0, 1
/* 80B72E38  41 82 00 28 */	beq lbl_80B72E60
/* 80B72E3C  83 FE 0B 5C */	lwz r31, 0xb5c(r30)
/* 80B72E40  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 80B72E44  4B 5D 2A 55 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B72E48  93 FE 0B 5C */	stw r31, 0xb5c(r30)
/* 80B72E4C  38 00 00 01 */	li r0, 1
/* 80B72E50  90 1E 0B 58 */	stw r0, 0xb58(r30)
/* 80B72E54  3C 60 80 B7 */	lis r3, lit_4557@ha /* 0x80B74D0C@ha */
/* 80B72E58  C0 03 4D 0C */	lfs f0, lit_4557@l(r3)  /* 0x80B74D0C@l */
/* 80B72E5C  D0 1E 0B 68 */	stfs f0, 0xb68(r30)
lbl_80B72E60:
/* 80B72E60  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B72E64  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B72E68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B72E6C  7C 08 03 A6 */	mtlr r0
/* 80B72E70  38 21 00 10 */	addi r1, r1, 0x10
/* 80B72E74  4E 80 00 20 */	blr 
