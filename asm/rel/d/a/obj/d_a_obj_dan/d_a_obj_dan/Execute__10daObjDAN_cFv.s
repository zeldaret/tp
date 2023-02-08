lbl_80BDB62C:
/* 80BDB62C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80BDB630  7C 08 02 A6 */	mflr r0
/* 80BDB634  90 01 00 44 */	stw r0, 0x44(r1)
/* 80BDB638  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80BDB63C  93 C1 00 38 */	stw r30, 0x38(r1)
/* 80BDB640  7C 7F 1B 78 */	mr r31, r3
/* 80BDB644  3C 80 80 BE */	lis r4, lit_3775@ha /* 0x80BDC3B0@ha */
/* 80BDB648  3B C4 C3 B0 */	addi r30, r4, lit_3775@l /* 0x80BDC3B0@l */
/* 80BDB64C  80 03 05 8C */	lwz r0, 0x58c(r3)
/* 80BDB650  2C 00 00 00 */	cmpwi r0, 0
/* 80BDB654  40 81 00 70 */	ble lbl_80BDB6C4
/* 80BDB658  C0 5E 00 A4 */	lfs f2, 0xa4(r30)
/* 80BDB65C  80 1F 07 9C */	lwz r0, 0x79c(r31)
/* 80BDB660  C8 3E 00 90 */	lfd f1, 0x90(r30)
/* 80BDB664  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80BDB668  3C 00 43 30 */	lis r0, 0x4330
/* 80BDB66C  90 01 00 28 */	stw r0, 0x28(r1)
/* 80BDB670  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 80BDB674  EC 00 08 28 */	fsubs f0, f0, f1
/* 80BDB678  EC 02 00 2A */	fadds f0, f2, f0
/* 80BDB67C  D0 1F 07 98 */	stfs f0, 0x798(r31)
/* 80BDB680  3C 60 00 06 */	lis r3, 0x0006 /* 0x000600A3@ha */
/* 80BDB684  38 03 00 A3 */	addi r0, r3, 0x00A3 /* 0x000600A3@l */
/* 80BDB688  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BDB68C  38 7F 07 B0 */	addi r3, r31, 0x7b0
/* 80BDB690  38 81 00 24 */	addi r4, r1, 0x24
/* 80BDB694  38 A0 00 00 */	li r5, 0
/* 80BDB698  38 C0 FF FF */	li r6, -1
/* 80BDB69C  81 9F 07 B0 */	lwz r12, 0x7b0(r31)
/* 80BDB6A0  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80BDB6A4  7D 89 03 A6 */	mtctr r12
/* 80BDB6A8  4E 80 04 21 */	bctrl 
/* 80BDB6AC  7F E3 FB 78 */	mr r3, r31
/* 80BDB6B0  4B 58 29 C9 */	bl Insect_GetDemoMain__9dInsect_cFv
/* 80BDB6B4  7F E3 FB 78 */	mr r3, r31
/* 80BDB6B8  4B FF FB AD */	bl ParticleSet__10daObjDAN_cFv
/* 80BDB6BC  38 60 00 01 */	li r3, 1
/* 80BDB6C0  48 00 02 50 */	b lbl_80BDB910
lbl_80BDB6C4:
/* 80BDB6C4  4B FF F9 B1 */	bl checkGroundPos__10daObjDAN_cFv
/* 80BDB6C8  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80BDB6CC  D0 1F 05 50 */	stfs f0, 0x550(r31)
/* 80BDB6D0  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80BDB6D4  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 80BDB6D8  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80BDB6DC  D0 1F 05 58 */	stfs f0, 0x558(r31)
/* 80BDB6E0  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80BDB6E4  D0 1F 05 38 */	stfs f0, 0x538(r31)
/* 80BDB6E8  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80BDB6EC  D0 1F 05 3C */	stfs f0, 0x53c(r31)
/* 80BDB6F0  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80BDB6F4  D0 1F 05 40 */	stfs f0, 0x540(r31)
/* 80BDB6F8  C0 3F 05 3C */	lfs f1, 0x53c(r31)
/* 80BDB6FC  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80BDB700  EC 01 00 2A */	fadds f0, f1, f0
/* 80BDB704  D0 1F 05 3C */	stfs f0, 0x53c(r31)
/* 80BDB708  88 1F 07 A8 */	lbz r0, 0x7a8(r31)
/* 80BDB70C  2C 00 00 01 */	cmpwi r0, 1
/* 80BDB710  41 82 01 14 */	beq lbl_80BDB824
/* 80BDB714  40 80 01 78 */	bge lbl_80BDB88C
/* 80BDB718  2C 00 00 00 */	cmpwi r0, 0
/* 80BDB71C  40 80 00 08 */	bge lbl_80BDB724
/* 80BDB720  48 00 01 6C */	b lbl_80BDB88C
lbl_80BDB724:
/* 80BDB724  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 80BDB728  54 00 02 D7 */	rlwinm. r0, r0, 0, 0xb, 0xb
/* 80BDB72C  40 82 00 10 */	bne lbl_80BDB73C
/* 80BDB730  7F E3 FB 78 */	mr r3, r31
/* 80BDB734  4B FF F8 A9 */	bl Action__10daObjDAN_cFv
/* 80BDB738  48 00 00 24 */	b lbl_80BDB75C
lbl_80BDB73C:
/* 80BDB73C  C0 1E 00 54 */	lfs f0, 0x54(r30)
/* 80BDB740  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 80BDB744  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80BDB748  D0 1F 04 A8 */	stfs f0, 0x4a8(r31)
/* 80BDB74C  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80BDB750  D0 1F 04 AC */	stfs f0, 0x4ac(r31)
/* 80BDB754  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80BDB758  D0 1F 04 B0 */	stfs f0, 0x4b0(r31)
lbl_80BDB75C:
/* 80BDB75C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BDB760  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BDB764  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 80BDB768  38 00 00 FF */	li r0, 0xff
/* 80BDB76C  90 01 00 08 */	stw r0, 8(r1)
/* 80BDB770  38 80 00 00 */	li r4, 0
/* 80BDB774  90 81 00 0C */	stw r4, 0xc(r1)
/* 80BDB778  38 00 FF FF */	li r0, -1
/* 80BDB77C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80BDB780  90 81 00 14 */	stw r4, 0x14(r1)
/* 80BDB784  90 81 00 18 */	stw r4, 0x18(r1)
/* 80BDB788  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80BDB78C  80 9F 05 74 */	lwz r4, 0x574(r31)
/* 80BDB790  38 A0 00 00 */	li r5, 0
/* 80BDB794  38 C0 0A 1C */	li r6, 0xa1c
/* 80BDB798  38 FF 04 D0 */	addi r7, r31, 0x4d0
/* 80BDB79C  39 1F 01 0C */	addi r8, r31, 0x10c
/* 80BDB7A0  39 3F 04 E4 */	addi r9, r31, 0x4e4
/* 80BDB7A4  39 40 00 00 */	li r10, 0
/* 80BDB7A8  C0 3E 00 00 */	lfs f1, 0(r30)
/* 80BDB7AC  4B 47 1D 21 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80BDB7B0  90 7F 05 74 */	stw r3, 0x574(r31)
/* 80BDB7B4  7F E3 FB 78 */	mr r3, r31
/* 80BDB7B8  4B FF FB D1 */	bl ObjHit__10daObjDAN_cFv
/* 80BDB7BC  7F E3 FB 78 */	mr r3, r31
/* 80BDB7C0  4B FF FD 21 */	bl BoomChk__10daObjDAN_cFv
/* 80BDB7C4  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80BDB7C8  D0 1F 05 38 */	stfs f0, 0x538(r31)
/* 80BDB7CC  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80BDB7D0  D0 1F 05 3C */	stfs f0, 0x53c(r31)
/* 80BDB7D4  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80BDB7D8  D0 1F 05 40 */	stfs f0, 0x540(r31)
/* 80BDB7DC  C0 1F 05 3C */	lfs f0, 0x53c(r31)
/* 80BDB7E0  C0 3E 00 4C */	lfs f1, 0x4c(r30)
/* 80BDB7E4  EC 00 08 2A */	fadds f0, f0, f1
/* 80BDB7E8  D0 1F 05 3C */	stfs f0, 0x53c(r31)
/* 80BDB7EC  C0 1F 05 38 */	lfs f0, 0x538(r31)
/* 80BDB7F0  D0 1F 05 50 */	stfs f0, 0x550(r31)
/* 80BDB7F4  C0 1F 05 3C */	lfs f0, 0x53c(r31)
/* 80BDB7F8  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 80BDB7FC  C0 1F 05 40 */	lfs f0, 0x540(r31)
/* 80BDB800  D0 1F 05 58 */	stfs f0, 0x558(r31)
/* 80BDB804  C0 1F 05 54 */	lfs f0, 0x554(r31)
/* 80BDB808  EC 00 08 2A */	fadds f0, f0, f1
/* 80BDB80C  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 80BDB810  7F E3 FB 78 */	mr r3, r31
/* 80BDB814  4B FF EE 0D */	bl SetCcSph__10daObjDAN_cFv
/* 80BDB818  7F E3 FB 78 */	mr r3, r31
/* 80BDB81C  4B FF FA 49 */	bl ParticleSet__10daObjDAN_cFv
/* 80BDB820  48 00 00 6C */	b lbl_80BDB88C
lbl_80BDB824:
/* 80BDB824  38 60 00 00 */	li r3, 0
/* 80BDB828  7C 64 1B 78 */	mr r4, r3
/* 80BDB82C  38 00 00 03 */	li r0, 3
/* 80BDB830  7C 09 03 A6 */	mtctr r0
lbl_80BDB834:
/* 80BDB834  38 C3 07 6A */	addi r6, r3, 0x76a
/* 80BDB838  7C BF 32 AE */	lhax r5, r31, r6
/* 80BDB83C  38 05 FF FF */	addi r0, r5, -1
/* 80BDB840  7C 1F 33 2E */	sthx r0, r31, r6
/* 80BDB844  7C 1F 32 AE */	lhax r0, r31, r6
/* 80BDB848  2C 00 00 00 */	cmpwi r0, 0
/* 80BDB84C  41 81 00 08 */	bgt lbl_80BDB854
/* 80BDB850  7C 9F 33 2E */	sthx r4, r31, r6
lbl_80BDB854:
/* 80BDB854  38 63 00 02 */	addi r3, r3, 2
/* 80BDB858  42 00 FF DC */	bdnz lbl_80BDB834
/* 80BDB85C  88 1F 07 68 */	lbz r0, 0x768(r31)
/* 80BDB860  2C 00 00 02 */	cmpwi r0, 2
/* 80BDB864  41 82 00 20 */	beq lbl_80BDB884
/* 80BDB868  40 80 00 24 */	bge lbl_80BDB88C
/* 80BDB86C  2C 00 00 01 */	cmpwi r0, 1
/* 80BDB870  40 80 00 08 */	bge lbl_80BDB878
/* 80BDB874  48 00 00 18 */	b lbl_80BDB88C
lbl_80BDB878:
/* 80BDB878  7F E3 FB 78 */	mr r3, r31
/* 80BDB87C  4B FF F2 99 */	bl MoveAction__10daObjDAN_cFv
/* 80BDB880  48 00 00 0C */	b lbl_80BDB88C
lbl_80BDB884:
/* 80BDB884  7F E3 FB 78 */	mr r3, r31
/* 80BDB888  4B FF F3 89 */	bl DamageAction__10daObjDAN_cFv
lbl_80BDB88C:
/* 80BDB88C  3C 60 00 06 */	lis r3, 0x0006 /* 0x000600A3@ha */
/* 80BDB890  38 03 00 A3 */	addi r0, r3, 0x00A3 /* 0x000600A3@l */
/* 80BDB894  90 01 00 20 */	stw r0, 0x20(r1)
/* 80BDB898  38 7F 07 B0 */	addi r3, r31, 0x7b0
/* 80BDB89C  38 81 00 20 */	addi r4, r1, 0x20
/* 80BDB8A0  38 A0 00 00 */	li r5, 0
/* 80BDB8A4  38 C0 FF FF */	li r6, -1
/* 80BDB8A8  81 9F 07 B0 */	lwz r12, 0x7b0(r31)
/* 80BDB8AC  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80BDB8B0  7D 89 03 A6 */	mtctr r12
/* 80BDB8B4  4E 80 04 21 */	bctrl 
/* 80BDB8B8  7F E3 FB 78 */	mr r3, r31
/* 80BDB8BC  38 9F 05 90 */	addi r4, r31, 0x590
/* 80BDB8C0  4B 43 EE 0D */	bl fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz
/* 80BDB8C4  38 7F 08 88 */	addi r3, r31, 0x888
/* 80BDB8C8  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BDB8CC  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BDB8D0  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80BDB8D4  4B 49 B1 D9 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 80BDB8D8  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80BDB8DC  7C 03 07 74 */	extsb r3, r0
/* 80BDB8E0  4B 45 17 8D */	bl dComIfGp_getReverb__Fi
/* 80BDB8E4  7C 65 1B 78 */	mr r5, r3
/* 80BDB8E8  80 7F 08 44 */	lwz r3, 0x844(r31)
/* 80BDB8EC  38 80 00 00 */	li r4, 0
/* 80BDB8F0  4B 43 57 C1 */	bl play__16mDoExt_McaMorfSOFUlSc
/* 80BDB8F4  80 7F 07 90 */	lwz r3, 0x790(r31)
/* 80BDB8F8  4B 43 1B 31 */	bl play__14mDoExt_baseAnmFv
/* 80BDB8FC  80 7F 07 94 */	lwz r3, 0x794(r31)
/* 80BDB900  4B 43 1B 29 */	bl play__14mDoExt_baseAnmFv
/* 80BDB904  7F E3 FB 78 */	mr r3, r31
/* 80BDB908  48 00 00 89 */	bl setBaseMtx__10daObjDAN_cFv
/* 80BDB90C  38 60 00 01 */	li r3, 1
lbl_80BDB910:
/* 80BDB910  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80BDB914  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80BDB918  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80BDB91C  7C 08 03 A6 */	mtlr r0
/* 80BDB920  38 21 00 40 */	addi r1, r1, 0x40
/* 80BDB924  4E 80 00 20 */	blr 
