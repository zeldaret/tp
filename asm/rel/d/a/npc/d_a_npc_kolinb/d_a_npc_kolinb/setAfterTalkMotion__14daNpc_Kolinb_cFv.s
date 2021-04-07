lbl_80A465D0:
/* 80A465D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A465D4  7C 08 02 A6 */	mflr r0
/* 80A465D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A465DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A465E0  93 C1 00 08 */	stw r30, 8(r1)
/* 80A465E4  7C 7E 1B 78 */	mr r30, r3
/* 80A465E8  80 03 0B 58 */	lwz r0, 0xb58(r3)
/* 80A465EC  2C 00 00 08 */	cmpwi r0, 8
/* 80A465F0  41 82 00 28 */	beq lbl_80A46618
/* 80A465F4  83 FE 0B 5C */	lwz r31, 0xb5c(r30)
/* 80A465F8  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 80A465FC  4B 6F F2 9D */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A46600  93 FE 0B 5C */	stw r31, 0xb5c(r30)
/* 80A46604  38 00 00 08 */	li r0, 8
/* 80A46608  90 1E 0B 58 */	stw r0, 0xb58(r30)
/* 80A4660C  3C 60 80 A5 */	lis r3, lit_4542@ha /* 0x80A487D0@ha */
/* 80A46610  C0 03 87 D0 */	lfs f0, lit_4542@l(r3)  /* 0x80A487D0@l */
/* 80A46614  D0 1E 0B 68 */	stfs f0, 0xb68(r30)
lbl_80A46618:
/* 80A46618  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A4661C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A46620  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A46624  7C 08 03 A6 */	mtlr r0
/* 80A46628  38 21 00 10 */	addi r1, r1, 0x10
/* 80A4662C  4E 80 00 20 */	blr 
