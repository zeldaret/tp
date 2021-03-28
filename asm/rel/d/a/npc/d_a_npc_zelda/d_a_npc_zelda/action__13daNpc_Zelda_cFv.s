lbl_80B761E0:
/* 80B761E0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B761E4  7C 08 02 A6 */	mflr r0
/* 80B761E8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B761EC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80B761F0  7C 7F 1B 78 */	mr r31, r3
/* 80B761F4  88 03 0D 20 */	lbz r0, 0xd20(r3)
/* 80B761F8  2C 00 00 00 */	cmpwi r0, 0
/* 80B761FC  41 82 00 5C */	beq lbl_80B76258
/* 80B76200  38 C0 00 00 */	li r6, 0
/* 80B76204  38 60 00 00 */	li r3, 0
/* 80B76208  7C C4 33 78 */	mr r4, r6
/* 80B7620C  3C A0 80 B8 */	lis r5, lit_4190@ha
/* 80B76210  C0 05 80 70 */	lfs f0, lit_4190@l(r5)
/* 80B76214  38 00 00 02 */	li r0, 2
/* 80B76218  7C 09 03 A6 */	mtctr r0
lbl_80B7621C:
/* 80B7621C  7C BF 22 14 */	add r5, r31, r4
/* 80B76220  B0 C5 0D 08 */	sth r6, 0xd08(r5)
/* 80B76224  B0 C5 0D 0A */	sth r6, 0xd0a(r5)
/* 80B76228  B0 C5 0D 0C */	sth r6, 0xd0c(r5)
/* 80B7622C  38 03 0D 14 */	addi r0, r3, 0xd14
/* 80B76230  7C 1F 05 2E */	stfsx f0, r31, r0
/* 80B76234  38 63 00 04 */	addi r3, r3, 4
/* 80B76238  38 84 00 06 */	addi r4, r4, 6
/* 80B7623C  42 00 FF E0 */	bdnz lbl_80B7621C
/* 80B76240  38 00 00 00 */	li r0, 0
/* 80B76244  B0 1F 0D 1C */	sth r0, 0xd1c(r31)
/* 80B76248  B0 1F 0D 1E */	sth r0, 0xd1e(r31)
/* 80B7624C  98 1F 0D 20 */	stb r0, 0xd20(r31)
/* 80B76250  38 00 00 01 */	li r0, 1
/* 80B76254  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80B76258:
/* 80B76258  38 7F 0F 84 */	addi r3, r31, 0xf84
/* 80B7625C  4B 7E BD BC */	b __ptmf_test
/* 80B76260  2C 03 00 00 */	cmpwi r3, 0
/* 80B76264  41 82 00 54 */	beq lbl_80B762B8
/* 80B76268  38 7F 0F 90 */	addi r3, r31, 0xf90
/* 80B7626C  38 9F 0F 84 */	addi r4, r31, 0xf84
/* 80B76270  4B 7E BD D8 */	b __ptmf_cmpr
/* 80B76274  2C 03 00 00 */	cmpwi r3, 0
/* 80B76278  40 82 00 1C */	bne lbl_80B76294
/* 80B7627C  7F E3 FB 78 */	mr r3, r31
/* 80B76280  38 80 00 00 */	li r4, 0
/* 80B76284  39 9F 0F 90 */	addi r12, r31, 0xf90
/* 80B76288  4B 7E BD FC */	b __ptmf_scall
/* 80B7628C  60 00 00 00 */	nop 
/* 80B76290  48 00 00 28 */	b lbl_80B762B8
lbl_80B76294:
/* 80B76294  80 7F 0F 84 */	lwz r3, 0xf84(r31)
/* 80B76298  80 1F 0F 88 */	lwz r0, 0xf88(r31)
/* 80B7629C  90 61 00 08 */	stw r3, 8(r1)
/* 80B762A0  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B762A4  80 1F 0F 8C */	lwz r0, 0xf8c(r31)
/* 80B762A8  90 01 00 10 */	stw r0, 0x10(r1)
/* 80B762AC  7F E3 FB 78 */	mr r3, r31
/* 80B762B0  38 81 00 08 */	addi r4, r1, 8
/* 80B762B4  48 00 05 3D */	bl setAction__13daNpc_Zelda_cFM13daNpc_Zelda_cFPCvPvPv_i
lbl_80B762B8:
/* 80B762B8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80B762BC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B762C0  7C 08 03 A6 */	mtlr r0
/* 80B762C4  38 21 00 20 */	addi r1, r1, 0x20
/* 80B762C8  4E 80 00 20 */	blr 
