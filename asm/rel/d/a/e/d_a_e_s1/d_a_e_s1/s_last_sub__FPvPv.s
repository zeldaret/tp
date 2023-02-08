lbl_8077B274:
/* 8077B274  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8077B278  7C 08 02 A6 */	mflr r0
/* 8077B27C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8077B280  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8077B284  93 C1 00 08 */	stw r30, 8(r1)
/* 8077B288  7C 7E 1B 78 */	mr r30, r3
/* 8077B28C  7C 9F 23 78 */	mr r31, r4
/* 8077B290  4B 89 DA 51 */	bl fopAc_IsActor__FPv
/* 8077B294  2C 03 00 00 */	cmpwi r3, 0
/* 8077B298  41 82 00 64 */	beq lbl_8077B2FC
/* 8077B29C  A8 1E 00 08 */	lha r0, 8(r30)
/* 8077B2A0  2C 00 01 B4 */	cmpwi r0, 0x1b4
/* 8077B2A4  40 82 00 58 */	bne lbl_8077B2FC
/* 8077B2A8  7C 1E F8 40 */	cmplw r30, r31
/* 8077B2AC  41 82 00 50 */	beq lbl_8077B2FC
/* 8077B2B0  88 7E 05 B6 */	lbz r3, 0x5b6(r30)
/* 8077B2B4  88 1F 05 B6 */	lbz r0, 0x5b6(r31)
/* 8077B2B8  7C 03 00 40 */	cmplw r3, r0
/* 8077B2BC  40 82 00 40 */	bne lbl_8077B2FC
/* 8077B2C0  3C 60 80 78 */	lis r3, same_id@ha /* 0x807814B8@ha */
/* 8077B2C4  38 83 14 B8 */	addi r4, r3, same_id@l /* 0x807814B8@l */
/* 8077B2C8  80 64 00 00 */	lwz r3, 0(r4)
/* 8077B2CC  38 03 00 01 */	addi r0, r3, 1
/* 8077B2D0  90 04 00 00 */	stw r0, 0(r4)
/* 8077B2D4  A8 1E 06 96 */	lha r0, 0x696(r30)
/* 8077B2D8  2C 00 00 0A */	cmpwi r0, 0xa
/* 8077B2DC  41 82 00 0C */	beq lbl_8077B2E8
/* 8077B2E0  2C 00 00 09 */	cmpwi r0, 9
/* 8077B2E4  40 82 00 18 */	bne lbl_8077B2FC
lbl_8077B2E8:
/* 8077B2E8  3C 60 80 78 */	lis r3, fail_id@ha /* 0x807814BC@ha */
/* 8077B2EC  38 83 14 BC */	addi r4, r3, fail_id@l /* 0x807814BC@l */
/* 8077B2F0  80 64 00 00 */	lwz r3, 0(r4)
/* 8077B2F4  38 03 00 01 */	addi r0, r3, 1
/* 8077B2F8  90 04 00 00 */	stw r0, 0(r4)
lbl_8077B2FC:
/* 8077B2FC  38 60 00 00 */	li r3, 0
/* 8077B300  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8077B304  83 C1 00 08 */	lwz r30, 8(r1)
/* 8077B308  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8077B30C  7C 08 03 A6 */	mtlr r0
/* 8077B310  38 21 00 10 */	addi r1, r1, 0x10
/* 8077B314  4E 80 00 20 */	blr 
