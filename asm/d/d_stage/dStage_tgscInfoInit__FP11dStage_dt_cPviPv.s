lbl_80025BFC:
/* 80025BFC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80025C00  7C 08 02 A6 */	mflr r0
/* 80025C04  90 01 00 24 */	stw r0, 0x24(r1)
/* 80025C08  39 61 00 20 */	addi r11, r1, 0x20
/* 80025C0C  48 33 C5 CD */	bl _savegpr_28
/* 80025C10  7C 7C 1B 78 */	mr r28, r3
/* 80025C14  7C 9D 23 78 */	mr r29, r4
/* 80025C18  83 E4 00 08 */	lwz r31, 8(r4)
/* 80025C1C  3B C0 00 00 */	li r30, 0
/* 80025C20  48 00 00 94 */	b lbl_80025CB4
lbl_80025C24:
/* 80025C24  88 7C 00 04 */	lbz r3, 4(r28)
/* 80025C28  38 9F 00 0C */	addi r4, r31, 0xc
/* 80025C2C  48 00 B8 09 */	bl check__7daSus_cFScRC4cXyz
/* 80025C30  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80025C34  40 82 00 78 */	bne lbl_80025CAC
/* 80025C38  4B FF 3E 71 */	bl fopAcM_CreateAppend__Fv
/* 80025C3C  7C 64 1B 79 */	or. r4, r3, r3
/* 80025C40  41 82 00 6C */	beq lbl_80025CAC
/* 80025C44  80 1F 00 08 */	lwz r0, 8(r31)
/* 80025C48  90 04 00 00 */	stw r0, 0(r4)
/* 80025C4C  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80025C50  D0 04 00 04 */	stfs f0, 4(r4)
/* 80025C54  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 80025C58  D0 04 00 08 */	stfs f0, 8(r4)
/* 80025C5C  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 80025C60  D0 04 00 0C */	stfs f0, 0xc(r4)
/* 80025C64  A8 1F 00 18 */	lha r0, 0x18(r31)
/* 80025C68  B0 04 00 10 */	sth r0, 0x10(r4)
/* 80025C6C  A8 1F 00 1A */	lha r0, 0x1a(r31)
/* 80025C70  B0 04 00 12 */	sth r0, 0x12(r4)
/* 80025C74  A8 1F 00 1C */	lha r0, 0x1c(r31)
/* 80025C78  B0 04 00 14 */	sth r0, 0x14(r4)
/* 80025C7C  A0 1F 00 1E */	lhz r0, 0x1e(r31)
/* 80025C80  B0 04 00 16 */	sth r0, 0x16(r4)
/* 80025C84  88 1C 00 04 */	lbz r0, 4(r28)
/* 80025C88  98 04 00 21 */	stb r0, 0x21(r4)
/* 80025C8C  88 1F 00 20 */	lbz r0, 0x20(r31)
/* 80025C90  98 04 00 18 */	stb r0, 0x18(r4)
/* 80025C94  88 1F 00 21 */	lbz r0, 0x21(r31)
/* 80025C98  98 04 00 19 */	stb r0, 0x19(r4)
/* 80025C9C  88 1F 00 22 */	lbz r0, 0x22(r31)
/* 80025CA0  98 04 00 1A */	stb r0, 0x1a(r4)
/* 80025CA4  7F E3 FB 78 */	mr r3, r31
/* 80025CA8  4B FF F2 55 */	bl dStage_actorCreate__FP22stage_actor_data_classP16fopAcM_prm_class
lbl_80025CAC:
/* 80025CAC  3B FF 00 24 */	addi r31, r31, 0x24
/* 80025CB0  3B DE 00 01 */	addi r30, r30, 1
lbl_80025CB4:
/* 80025CB4  80 1D 00 04 */	lwz r0, 4(r29)
/* 80025CB8  7C 1E 00 00 */	cmpw r30, r0
/* 80025CBC  41 80 FF 68 */	blt lbl_80025C24
/* 80025CC0  38 60 00 01 */	li r3, 1
/* 80025CC4  39 61 00 20 */	addi r11, r1, 0x20
/* 80025CC8  48 33 C5 5D */	bl _restgpr_28
/* 80025CCC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80025CD0  7C 08 03 A6 */	mtlr r0
/* 80025CD4  38 21 00 20 */	addi r1, r1, 0x20
/* 80025CD8  4E 80 00 20 */	blr 
