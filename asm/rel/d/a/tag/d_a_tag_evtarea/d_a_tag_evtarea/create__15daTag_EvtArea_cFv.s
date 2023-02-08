lbl_8048C4F8:
/* 8048C4F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048C4FC  7C 08 02 A6 */	mflr r0
/* 8048C500  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048C504  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8048C508  93 C1 00 08 */	stw r30, 8(r1)
/* 8048C50C  7C 7F 1B 78 */	mr r31, r3
/* 8048C510  3C 80 80 49 */	lis r4, lit_3853@ha /* 0x8048CDD0@ha */
/* 8048C514  3B C4 CD D0 */	addi r30, r4, lit_3853@l /* 0x8048CDD0@l */
/* 8048C518  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 8048C51C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 8048C520  40 82 00 28 */	bne lbl_8048C548
/* 8048C524  28 1F 00 00 */	cmplwi r31, 0
/* 8048C528  41 82 00 14 */	beq lbl_8048C53C
/* 8048C52C  4B B8 C6 39 */	bl __ct__10fopAc_ac_cFv
/* 8048C530  3C 60 80 49 */	lis r3, __vt__15daTag_EvtArea_c@ha /* 0x8048CE98@ha */
/* 8048C534  38 03 CE 98 */	addi r0, r3, __vt__15daTag_EvtArea_c@l /* 0x8048CE98@l */
/* 8048C538  90 1F 05 68 */	stw r0, 0x568(r31)
lbl_8048C53C:
/* 8048C53C  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 8048C540  60 00 00 08 */	ori r0, r0, 8
/* 8048C544  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_8048C548:
/* 8048C548  A8 1F 04 E8 */	lha r0, 0x4e8(r31)
/* 8048C54C  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 8048C550  38 03 FF 01 */	addi r0, r3, -255
/* 8048C554  30 00 FF FF */	addic r0, r0, -1
/* 8048C558  7C 00 01 10 */	subfe r0, r0, r0
/* 8048C55C  7C 60 00 78 */	andc r0, r3, r0
/* 8048C560  28 00 00 17 */	cmplwi r0, 0x17
/* 8048C564  41 81 01 60 */	bgt lbl_8048C6C4
/* 8048C568  3C 60 80 49 */	lis r3, lit_3857@ha /* 0x8048CDE8@ha */
/* 8048C56C  38 63 CD E8 */	addi r3, r3, lit_3857@l /* 0x8048CDE8@l */
/* 8048C570  54 00 10 3A */	slwi r0, r0, 2
/* 8048C574  7C 03 00 2E */	lwzx r0, r3, r0
/* 8048C578  7C 09 03 A6 */	mtctr r0
/* 8048C57C  4E 80 04 20 */	bctr 
lbl_8048C580:
/* 8048C580  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 8048C584  C0 3E 00 00 */	lfs f1, 0(r30)
/* 8048C588  EC 00 00 72 */	fmuls f0, f0, f1
/* 8048C58C  D0 1F 04 EC */	stfs f0, 0x4ec(r31)
/* 8048C590  C0 1F 04 F0 */	lfs f0, 0x4f0(r31)
/* 8048C594  EC 00 00 72 */	fmuls f0, f0, f1
/* 8048C598  D0 1F 04 F0 */	stfs f0, 0x4f0(r31)
/* 8048C59C  C0 1F 04 F4 */	lfs f0, 0x4f4(r31)
/* 8048C5A0  EC 00 00 72 */	fmuls f0, f0, f1
/* 8048C5A4  D0 1F 04 F4 */	stfs f0, 0x4f4(r31)
/* 8048C5A8  48 00 01 44 */	b lbl_8048C6EC
lbl_8048C5AC:
/* 8048C5AC  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 8048C5B0  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8048C5B4  EC 00 00 72 */	fmuls f0, f0, f1
/* 8048C5B8  D0 1F 04 EC */	stfs f0, 0x4ec(r31)
/* 8048C5BC  C0 1F 04 F0 */	lfs f0, 0x4f0(r31)
/* 8048C5C0  EC 00 00 72 */	fmuls f0, f0, f1
/* 8048C5C4  D0 1F 04 F0 */	stfs f0, 0x4f0(r31)
/* 8048C5C8  C0 1F 04 F4 */	lfs f0, 0x4f4(r31)
/* 8048C5CC  EC 00 00 72 */	fmuls f0, f0, f1
/* 8048C5D0  D0 1F 04 F4 */	stfs f0, 0x4f4(r31)
/* 8048C5D4  48 00 01 18 */	b lbl_8048C6EC
lbl_8048C5D8:
/* 8048C5D8  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 8048C5DC  C0 3E 00 00 */	lfs f1, 0(r30)
/* 8048C5E0  EC 00 00 72 */	fmuls f0, f0, f1
/* 8048C5E4  D0 1F 04 EC */	stfs f0, 0x4ec(r31)
/* 8048C5E8  C0 1F 04 F0 */	lfs f0, 0x4f0(r31)
/* 8048C5EC  EC 00 00 72 */	fmuls f0, f0, f1
/* 8048C5F0  D0 1F 04 F0 */	stfs f0, 0x4f0(r31)
/* 8048C5F4  C0 1F 04 F4 */	lfs f0, 0x4f4(r31)
/* 8048C5F8  EC 00 00 72 */	fmuls f0, f0, f1
/* 8048C5FC  D0 1F 04 F4 */	stfs f0, 0x4f4(r31)
/* 8048C600  48 00 00 EC */	b lbl_8048C6EC
lbl_8048C604:
/* 8048C604  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 8048C608  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8048C60C  EC 00 00 72 */	fmuls f0, f0, f1
/* 8048C610  D0 1F 04 EC */	stfs f0, 0x4ec(r31)
/* 8048C614  C0 1F 04 F4 */	lfs f0, 0x4f4(r31)
/* 8048C618  EC 00 00 72 */	fmuls f0, f0, f1
/* 8048C61C  D0 1F 04 F4 */	stfs f0, 0x4f4(r31)
/* 8048C620  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 8048C624  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 8048C628  EC 00 00 72 */	fmuls f0, f0, f1
/* 8048C62C  D0 1F 04 EC */	stfs f0, 0x4ec(r31)
/* 8048C630  C0 1F 04 F0 */	lfs f0, 0x4f0(r31)
/* 8048C634  EC 00 00 72 */	fmuls f0, f0, f1
/* 8048C638  D0 1F 04 F0 */	stfs f0, 0x4f0(r31)
/* 8048C63C  C0 1F 04 F4 */	lfs f0, 0x4f4(r31)
/* 8048C640  EC 00 00 72 */	fmuls f0, f0, f1
/* 8048C644  D0 1F 04 F4 */	stfs f0, 0x4f4(r31)
/* 8048C648  48 00 00 A4 */	b lbl_8048C6EC
lbl_8048C64C:
/* 8048C64C  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 8048C650  C0 3E 00 00 */	lfs f1, 0(r30)
/* 8048C654  EC 00 00 72 */	fmuls f0, f0, f1
/* 8048C658  D0 1F 04 EC */	stfs f0, 0x4ec(r31)
/* 8048C65C  C0 1F 04 F0 */	lfs f0, 0x4f0(r31)
/* 8048C660  EC 00 00 72 */	fmuls f0, f0, f1
/* 8048C664  D0 1F 04 F0 */	stfs f0, 0x4f0(r31)
/* 8048C668  C0 1F 04 F4 */	lfs f0, 0x4f4(r31)
/* 8048C66C  EC 00 00 72 */	fmuls f0, f0, f1
/* 8048C670  D0 1F 04 F4 */	stfs f0, 0x4f4(r31)
/* 8048C674  48 00 00 78 */	b lbl_8048C6EC
lbl_8048C678:
/* 8048C678  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 8048C67C  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 8048C680  EC 00 00 72 */	fmuls f0, f0, f1
/* 8048C684  D0 1F 04 EC */	stfs f0, 0x4ec(r31)
/* 8048C688  C0 1F 04 F4 */	lfs f0, 0x4f4(r31)
/* 8048C68C  EC 00 00 72 */	fmuls f0, f0, f1
/* 8048C690  D0 1F 04 F4 */	stfs f0, 0x4f4(r31)
/* 8048C694  48 00 00 58 */	b lbl_8048C6EC
lbl_8048C698:
/* 8048C698  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 8048C69C  C0 3E 00 00 */	lfs f1, 0(r30)
/* 8048C6A0  EC 00 00 72 */	fmuls f0, f0, f1
/* 8048C6A4  D0 1F 04 EC */	stfs f0, 0x4ec(r31)
/* 8048C6A8  C0 1F 04 F0 */	lfs f0, 0x4f0(r31)
/* 8048C6AC  EC 00 00 72 */	fmuls f0, f0, f1
/* 8048C6B0  D0 1F 04 F0 */	stfs f0, 0x4f0(r31)
/* 8048C6B4  C0 1F 04 F4 */	lfs f0, 0x4f4(r31)
/* 8048C6B8  EC 00 00 72 */	fmuls f0, f0, f1
/* 8048C6BC  D0 1F 04 F4 */	stfs f0, 0x4f4(r31)
/* 8048C6C0  48 00 00 2C */	b lbl_8048C6EC
lbl_8048C6C4:
/* 8048C6C4  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 8048C6C8  C0 3E 00 00 */	lfs f1, 0(r30)
/* 8048C6CC  EC 00 00 72 */	fmuls f0, f0, f1
/* 8048C6D0  D0 1F 04 EC */	stfs f0, 0x4ec(r31)
/* 8048C6D4  C0 1F 04 F0 */	lfs f0, 0x4f0(r31)
/* 8048C6D8  EC 00 00 72 */	fmuls f0, f0, f1
/* 8048C6DC  D0 1F 04 F0 */	stfs f0, 0x4f0(r31)
/* 8048C6E0  C0 1F 04 F4 */	lfs f0, 0x4f4(r31)
/* 8048C6E4  EC 00 00 72 */	fmuls f0, f0, f1
/* 8048C6E8  D0 1F 04 F4 */	stfs f0, 0x4f4(r31)
lbl_8048C6EC:
/* 8048C6EC  7F E3 FB 78 */	mr r3, r31
/* 8048C6F0  48 00 01 AD */	bl isDelete__15daTag_EvtArea_cFv
/* 8048C6F4  2C 03 00 00 */	cmpwi r3, 0
/* 8048C6F8  41 82 00 0C */	beq lbl_8048C704
/* 8048C6FC  38 60 00 05 */	li r3, 5
/* 8048C700  48 00 00 10 */	b lbl_8048C710
lbl_8048C704:
/* 8048C704  38 00 00 00 */	li r0, 0
/* 8048C708  98 1F 05 6C */	stb r0, 0x56c(r31)
/* 8048C70C  38 60 00 04 */	li r3, 4
lbl_8048C710:
/* 8048C710  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8048C714  83 C1 00 08 */	lwz r30, 8(r1)
/* 8048C718  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048C71C  7C 08 03 A6 */	mtlr r0
/* 8048C720  38 21 00 10 */	addi r1, r1, 0x10
/* 8048C724  4E 80 00 20 */	blr 
