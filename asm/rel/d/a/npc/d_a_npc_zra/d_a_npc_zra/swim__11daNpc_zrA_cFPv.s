lbl_80B80860:
/* 80B80860  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B80864  7C 08 02 A6 */	mflr r0
/* 80B80868  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B8086C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80B80870  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80B80874  7C 7F 1B 78 */	mr r31, r3
/* 80B80878  3C 80 80 B9 */	lis r4, m__17daNpc_zrA_Param_c@ha
/* 80B8087C  3B C4 C4 58 */	addi r30, r4, m__17daNpc_zrA_Param_c@l
/* 80B80880  A0 03 14 E6 */	lhz r0, 0x14e6(r3)
/* 80B80884  2C 00 00 02 */	cmpwi r0, 2
/* 80B80888  41 82 01 A8 */	beq lbl_80B80A30
/* 80B8088C  40 80 01 EC */	bge lbl_80B80A78
/* 80B80890  2C 00 00 00 */	cmpwi r0, 0
/* 80B80894  41 82 00 0C */	beq lbl_80B808A0
/* 80B80898  48 00 01 E0 */	b lbl_80B80A78
/* 80B8089C  48 00 01 DC */	b lbl_80B80A78
lbl_80B808A0:
/* 80B808A0  80 1F 05 FC */	lwz r0, 0x5fc(r31)
/* 80B808A4  60 00 00 02 */	ori r0, r0, 2
/* 80B808A8  90 1F 05 FC */	stw r0, 0x5fc(r31)
/* 80B808AC  80 1F 05 FC */	lwz r0, 0x5fc(r31)
/* 80B808B0  60 00 00 04 */	ori r0, r0, 4
/* 80B808B4  90 1F 05 FC */	stw r0, 0x5fc(r31)
/* 80B808B8  C0 1E 00 B0 */	lfs f0, 0xb0(r30)
/* 80B808BC  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 80B808C0  D0 1F 04 F8 */	stfs f0, 0x4f8(r31)
/* 80B808C4  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 80B808C8  D0 1F 05 00 */	stfs f0, 0x500(r31)
/* 80B808CC  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80B808D0  38 00 00 00 */	li r0, 0
/* 80B808D4  98 1F 15 3D */	stb r0, 0x153d(r31)
/* 80B808D8  38 80 00 14 */	li r4, 0x14
/* 80B808DC  C0 3E 00 D0 */	lfs f1, 0xd0(r30)
/* 80B808E0  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80B808E4  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B808E8  7D 89 03 A6 */	mtctr r12
/* 80B808EC  4E 80 04 21 */	bctrl 
/* 80B808F0  88 1F 15 20 */	lbz r0, 0x1520(r31)
/* 80B808F4  28 00 00 00 */	cmplwi r0, 0
/* 80B808F8  40 82 00 E0 */	bne lbl_80B809D8
/* 80B808FC  80 1F 0C 1C */	lwz r0, 0xc1c(r31)
/* 80B80900  28 00 00 00 */	cmplwi r0, 0
/* 80B80904  40 82 00 30 */	bne lbl_80B80934
/* 80B80908  7F E3 FB 78 */	mr r3, r31
/* 80B8090C  38 80 00 01 */	li r4, 1
/* 80B80910  C0 3E 00 D0 */	lfs f1, 0xd0(r30)
/* 80B80914  38 A0 00 00 */	li r5, 0
/* 80B80918  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80B8091C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B80920  7D 89 03 A6 */	mtctr r12
/* 80B80924  4E 80 04 21 */	bctrl 
/* 80B80928  38 00 00 01 */	li r0, 1
/* 80B8092C  98 1F 15 50 */	stb r0, 0x1550(r31)
/* 80B80930  48 00 00 B0 */	b lbl_80B809E0
lbl_80B80934:
/* 80B80934  88 1F 15 76 */	lbz r0, 0x1576(r31)
/* 80B80938  28 00 00 00 */	cmplwi r0, 0
/* 80B8093C  40 82 00 28 */	bne lbl_80B80964
/* 80B80940  7F E3 FB 78 */	mr r3, r31
/* 80B80944  38 80 00 17 */	li r4, 0x17
/* 80B80948  C0 3E 00 D0 */	lfs f1, 0xd0(r30)
/* 80B8094C  38 A0 00 00 */	li r5, 0
/* 80B80950  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80B80954  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B80958  7D 89 03 A6 */	mtctr r12
/* 80B8095C  4E 80 04 21 */	bctrl 
/* 80B80960  48 00 00 24 */	b lbl_80B80984
lbl_80B80964:
/* 80B80964  7F E3 FB 78 */	mr r3, r31
/* 80B80968  38 80 00 16 */	li r4, 0x16
/* 80B8096C  C0 3E 00 D0 */	lfs f1, 0xd0(r30)
/* 80B80970  38 A0 00 00 */	li r5, 0
/* 80B80974  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80B80978  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B8097C  7D 89 03 A6 */	mtctr r12
/* 80B80980  4E 80 04 21 */	bctrl 
lbl_80B80984:
/* 80B80984  38 60 00 03 */	li r3, 3
/* 80B80988  38 80 00 03 */	li r4, 3
/* 80B8098C  4B FF ED 59 */	bl func_80B7F6E4
/* 80B80990  98 7F 15 92 */	stb r3, 0x1592(r31)
/* 80B80994  4B 6E 6E D8 */	b cM_rnd__Fv
/* 80B80998  C0 1E 07 70 */	lfs f0, 0x770(r30)
/* 80B8099C  EC 00 00 72 */	fmuls f0, f0, f1
/* 80B809A0  FC 00 00 1E */	fctiwz f0, f0
/* 80B809A4  D8 01 00 08 */	stfd f0, 8(r1)
/* 80B809A8  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80B809AC  38 03 00 5A */	addi r0, r3, 0x5a
/* 80B809B0  90 1F 15 1C */	stw r0, 0x151c(r31)
/* 80B809B4  38 00 00 01 */	li r0, 1
/* 80B809B8  98 1F 15 20 */	stb r0, 0x1520(r31)
/* 80B809BC  98 1F 15 21 */	stb r0, 0x1521(r31)
/* 80B809C0  38 7E 00 00 */	addi r3, r30, 0
/* 80B809C4  C0 03 00 84 */	lfs f0, 0x84(r3)
/* 80B809C8  D0 1F 15 6C */	stfs f0, 0x156c(r31)
/* 80B809CC  38 00 00 00 */	li r0, 0
/* 80B809D0  98 1F 07 BC */	stb r0, 0x7bc(r31)
/* 80B809D4  48 00 00 0C */	b lbl_80B809E0
lbl_80B809D8:
/* 80B809D8  38 00 00 01 */	li r0, 1
/* 80B809DC  98 1F 15 20 */	stb r0, 0x1520(r31)
lbl_80B809E0:
/* 80B809E0  7F E3 FB 78 */	mr r3, r31
/* 80B809E4  38 80 00 00 */	li r4, 0
/* 80B809E8  4B FF DD 0D */	bl setLookMode__11daNpc_zrA_cFi
/* 80B809EC  38 60 00 00 */	li r3, 0
/* 80B809F0  90 7F 09 38 */	stw r3, 0x938(r31)
/* 80B809F4  90 7F 09 6C */	stw r3, 0x96c(r31)
/* 80B809F8  38 00 00 02 */	li r0, 2
/* 80B809FC  B0 1F 14 E6 */	sth r0, 0x14e6(r31)
/* 80B80A00  98 7F 15 3E */	stb r3, 0x153e(r31)
/* 80B80A04  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 80B80A08  B0 1F 15 36 */	sth r0, 0x1536(r31)
/* 80B80A0C  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80B80A10  B0 1F 15 38 */	sth r0, 0x1538(r31)
/* 80B80A14  A8 1F 04 E0 */	lha r0, 0x4e0(r31)
/* 80B80A18  B0 1F 15 3A */	sth r0, 0x153a(r31)
/* 80B80A1C  88 1F 15 20 */	lbz r0, 0x1520(r31)
/* 80B80A20  28 00 00 00 */	cmplwi r0, 0
/* 80B80A24  41 82 00 0C */	beq lbl_80B80A30
/* 80B80A28  7F E3 FB 78 */	mr r3, r31
/* 80B80A2C  48 00 18 0D */	bl calcWaistAngleInit__11daNpc_zrA_cFv
lbl_80B80A30:
/* 80B80A30  88 1F 15 20 */	lbz r0, 0x1520(r31)
/* 80B80A34  2C 00 00 01 */	cmpwi r0, 1
/* 80B80A38  41 82 00 2C */	beq lbl_80B80A64
/* 80B80A3C  40 80 00 10 */	bge lbl_80B80A4C
/* 80B80A40  2C 00 00 00 */	cmpwi r0, 0
/* 80B80A44  40 80 00 14 */	bge lbl_80B80A58
/* 80B80A48  48 00 00 30 */	b lbl_80B80A78
lbl_80B80A4C:
/* 80B80A4C  2C 00 00 03 */	cmpwi r0, 3
/* 80B80A50  40 80 00 28 */	bge lbl_80B80A78
/* 80B80A54  48 00 00 1C */	b lbl_80B80A70
lbl_80B80A58:
/* 80B80A58  7F E3 FB 78 */	mr r3, r31
/* 80B80A5C  48 00 0D 2D */	bl waitSwim__11daNpc_zrA_cFv
/* 80B80A60  48 00 00 18 */	b lbl_80B80A78
lbl_80B80A64:
/* 80B80A64  7F E3 FB 78 */	mr r3, r31
/* 80B80A68  48 00 00 2D */	bl railSwim__11daNpc_zrA_cFv
/* 80B80A6C  48 00 00 0C */	b lbl_80B80A78
lbl_80B80A70:
/* 80B80A70  7F E3 FB 78 */	mr r3, r31
/* 80B80A74  48 00 0F A5 */	bl turnSwim__11daNpc_zrA_cFv
lbl_80B80A78:
/* 80B80A78  38 60 00 01 */	li r3, 1
/* 80B80A7C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80B80A80  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80B80A84  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B80A88  7C 08 03 A6 */	mtlr r0
/* 80B80A8C  38 21 00 20 */	addi r1, r1, 0x20
/* 80B80A90  4E 80 00 20 */	blr 
