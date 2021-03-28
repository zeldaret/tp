lbl_80D56214:
/* 80D56214  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80D56218  7C 08 02 A6 */	mflr r0
/* 80D5621C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80D56220  39 61 00 30 */	addi r11, r1, 0x30
/* 80D56224  4B 60 BF B8 */	b _savegpr_29
/* 80D56228  7C 7D 1B 78 */	mr r29, r3
/* 80D5622C  7C 9E 23 78 */	mr r30, r4
/* 80D56230  3B E0 00 00 */	li r31, 0
/* 80D56234  80 84 00 00 */	lwz r4, 0(r4)
/* 80D56238  80 1E 00 04 */	lwz r0, 4(r30)
/* 80D5623C  90 81 00 08 */	stw r4, 8(r1)
/* 80D56240  90 01 00 0C */	stw r0, 0xc(r1)
/* 80D56244  80 1E 00 08 */	lwz r0, 8(r30)
/* 80D56248  90 01 00 10 */	stw r0, 0x10(r1)
/* 80D5624C  38 81 00 08 */	addi r4, r1, 8
/* 80D56250  4B FF FF 99 */	bl checkProcess__18daTag_BottleItem_cFM18daTag_BottleItem_cFPCvPvPv_i
/* 80D56254  2C 03 00 00 */	cmpwi r3, 0
/* 80D56258  41 82 00 0C */	beq lbl_80D56264
/* 80D5625C  38 60 00 00 */	li r3, 0
/* 80D56260  48 00 00 88 */	b lbl_80D562E8
lbl_80D56264:
/* 80D56264  38 00 00 02 */	li r0, 2
/* 80D56268  B0 1D 05 74 */	sth r0, 0x574(r29)
/* 80D5626C  38 7D 05 68 */	addi r3, r29, 0x568
/* 80D56270  4B 60 BD A8 */	b __ptmf_test
/* 80D56274  2C 03 00 00 */	cmpwi r3, 0
/* 80D56278  41 82 00 1C */	beq lbl_80D56294
/* 80D5627C  7F A3 EB 78 */	mr r3, r29
/* 80D56280  38 80 00 00 */	li r4, 0
/* 80D56284  39 9D 05 68 */	addi r12, r29, 0x568
/* 80D56288  4B 60 BD FC */	b __ptmf_scall
/* 80D5628C  60 00 00 00 */	nop 
/* 80D56290  7C 7F 1B 78 */	mr r31, r3
lbl_80D56294:
/* 80D56294  38 00 00 00 */	li r0, 0
/* 80D56298  B0 1D 05 74 */	sth r0, 0x574(r29)
/* 80D5629C  80 7E 00 00 */	lwz r3, 0(r30)
/* 80D562A0  80 1E 00 04 */	lwz r0, 4(r30)
/* 80D562A4  90 7D 05 68 */	stw r3, 0x568(r29)
/* 80D562A8  90 1D 05 6C */	stw r0, 0x56c(r29)
/* 80D562AC  80 1E 00 08 */	lwz r0, 8(r30)
/* 80D562B0  90 1D 05 70 */	stw r0, 0x570(r29)
/* 80D562B4  38 7D 05 68 */	addi r3, r29, 0x568
/* 80D562B8  4B 60 BD 60 */	b __ptmf_test
/* 80D562BC  2C 03 00 00 */	cmpwi r3, 0
/* 80D562C0  41 82 00 1C */	beq lbl_80D562DC
/* 80D562C4  7F A3 EB 78 */	mr r3, r29
/* 80D562C8  38 80 00 00 */	li r4, 0
/* 80D562CC  39 9D 05 68 */	addi r12, r29, 0x568
/* 80D562D0  4B 60 BD B4 */	b __ptmf_scall
/* 80D562D4  60 00 00 00 */	nop 
/* 80D562D8  7C 7F 1B 78 */	mr r31, r3
lbl_80D562DC:
/* 80D562DC  38 00 00 01 */	li r0, 1
/* 80D562E0  B0 1D 05 74 */	sth r0, 0x574(r29)
/* 80D562E4  7F E3 FB 78 */	mr r3, r31
lbl_80D562E8:
/* 80D562E8  39 61 00 30 */	addi r11, r1, 0x30
/* 80D562EC  4B 60 BF 3C */	b _restgpr_29
/* 80D562F0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80D562F4  7C 08 03 A6 */	mtlr r0
/* 80D562F8  38 21 00 30 */	addi r1, r1, 0x30
/* 80D562FC  4E 80 00 20 */	blr 
