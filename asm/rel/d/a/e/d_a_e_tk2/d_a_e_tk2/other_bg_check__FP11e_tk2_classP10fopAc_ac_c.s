lbl_807BA6D0:
/* 807BA6D0  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 807BA6D4  7C 08 02 A6 */	mflr r0
/* 807BA6D8  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 807BA6DC  93 E1 00 9C */	stw r31, 0x9c(r1)
/* 807BA6E0  93 C1 00 98 */	stw r30, 0x98(r1)
/* 807BA6E4  7C 9E 23 78 */	mr r30, r4
/* 807BA6E8  7C 7F 1B 78 */	mr r31, r3
/* 807BA6EC  38 61 00 20 */	addi r3, r1, 0x20
/* 807BA6F0  4B 8B D5 78 */	b __ct__11dBgS_LinChkFv
/* 807BA6F4  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 807BA6F8  D0 01 00 08 */	stfs f0, 8(r1)
/* 807BA6FC  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 807BA700  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 807BA704  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 807BA708  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 807BA70C  3C 60 80 7C */	lis r3, lit_3820@ha
/* 807BA710  C0 03 BD C4 */	lfs f0, lit_3820@l(r3)
/* 807BA714  EC 01 00 2A */	fadds f0, f1, f0
/* 807BA718  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 807BA71C  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 807BA720  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 807BA724  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 807BA728  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 807BA72C  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 807BA730  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 807BA734  C0 1F 05 3C */	lfs f0, 0x53c(r31)
/* 807BA738  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 807BA73C  38 61 00 20 */	addi r3, r1, 0x20
/* 807BA740  38 81 00 14 */	addi r4, r1, 0x14
/* 807BA744  38 A1 00 08 */	addi r5, r1, 8
/* 807BA748  7F E6 FB 78 */	mr r6, r31
/* 807BA74C  4B 8B D6 18 */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 807BA750  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807BA754  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807BA758  38 63 0F 38 */	addi r3, r3, 0xf38
/* 807BA75C  38 81 00 20 */	addi r4, r1, 0x20
/* 807BA760  4B 8B 9C 54 */	b LineCross__4cBgSFP11cBgS_LinChk
/* 807BA764  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807BA768  41 82 00 18 */	beq lbl_807BA780
/* 807BA76C  38 61 00 20 */	addi r3, r1, 0x20
/* 807BA770  38 80 FF FF */	li r4, -1
/* 807BA774  4B 8B D5 68 */	b __dt__11dBgS_LinChkFv
/* 807BA778  38 60 00 01 */	li r3, 1
/* 807BA77C  48 00 00 14 */	b lbl_807BA790
lbl_807BA780:
/* 807BA780  38 61 00 20 */	addi r3, r1, 0x20
/* 807BA784  38 80 FF FF */	li r4, -1
/* 807BA788  4B 8B D5 54 */	b __dt__11dBgS_LinChkFv
/* 807BA78C  38 60 00 00 */	li r3, 0
lbl_807BA790:
/* 807BA790  83 E1 00 9C */	lwz r31, 0x9c(r1)
/* 807BA794  83 C1 00 98 */	lwz r30, 0x98(r1)
/* 807BA798  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 807BA79C  7C 08 03 A6 */	mtlr r0
/* 807BA7A0  38 21 00 A0 */	addi r1, r1, 0xa0
/* 807BA7A4  4E 80 00 20 */	blr 
