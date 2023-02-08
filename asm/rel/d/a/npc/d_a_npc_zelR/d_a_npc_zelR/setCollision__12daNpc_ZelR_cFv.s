lbl_80B702B0:
/* 80B702B0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80B702B4  7C 08 02 A6 */	mflr r0
/* 80B702B8  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B702BC  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80B702C0  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 80B702C4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80B702C8  7C 7F 1B 78 */	mr r31, r3
/* 80B702CC  88 03 0E 25 */	lbz r0, 0xe25(r3)
/* 80B702D0  28 00 00 00 */	cmplwi r0, 0
/* 80B702D4  40 82 00 C8 */	bne lbl_80B7039C
/* 80B702D8  88 1F 0A 89 */	lbz r0, 0xa89(r31)
/* 80B702DC  28 00 00 01 */	cmplwi r0, 1
/* 80B702E0  40 82 00 24 */	bne lbl_80B70304
/* 80B702E4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B702E8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B702EC  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 80B702F0  28 00 00 00 */	cmplwi r0, 0
/* 80B702F4  40 82 00 10 */	bne lbl_80B70304
/* 80B702F8  38 00 00 69 */	li r0, 0x69
/* 80B702FC  90 1F 0E 70 */	stw r0, 0xe70(r31)
/* 80B70300  48 00 00 0C */	b lbl_80B7030C
lbl_80B70304:
/* 80B70304  38 00 00 79 */	li r0, 0x79
/* 80B70308  90 1F 0E 70 */	stw r0, 0xe70(r31)
lbl_80B7030C:
/* 80B7030C  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 80B70310  2C 00 00 00 */	cmpwi r0, 0
/* 80B70314  41 82 00 14 */	beq lbl_80B70328
/* 80B70318  38 00 00 00 */	li r0, 0
/* 80B7031C  90 1F 0E 6C */	stw r0, 0xe6c(r31)
/* 80B70320  90 1F 0E 5C */	stw r0, 0xe5c(r31)
/* 80B70324  48 00 00 24 */	b lbl_80B70348
lbl_80B70328:
/* 80B70328  3C 60 D8 FC */	lis r3, 0xD8FC /* 0xD8FBFDFF@ha */
/* 80B7032C  38 03 FD FF */	addi r0, r3, 0xFDFF /* 0xD8FBFDFF@l */
/* 80B70330  90 1F 0E 6C */	stw r0, 0xe6c(r31)
/* 80B70334  38 00 00 1F */	li r0, 0x1f
/* 80B70338  90 1F 0E 5C */	stw r0, 0xe5c(r31)
/* 80B7033C  80 1F 0E E0 */	lwz r0, 0xee0(r31)
/* 80B70340  60 00 00 04 */	ori r0, r0, 4
/* 80B70344  90 1F 0E E0 */	stw r0, 0xee0(r31)
lbl_80B70348:
/* 80B70348  C0 3F 0D EC */	lfs f1, 0xdec(r31)
/* 80B7034C  C3 FF 0D F0 */	lfs f31, 0xdf0(r31)
/* 80B70350  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80B70354  D0 01 00 08 */	stfs f0, 8(r1)
/* 80B70358  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80B7035C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80B70360  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80B70364  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80B70368  38 7F 0F 68 */	addi r3, r31, 0xf68
/* 80B7036C  4B 6F EE 8D */	bl SetH__8cM3dGCylFf
/* 80B70370  38 7F 0F 68 */	addi r3, r31, 0xf68
/* 80B70374  FC 20 F8 90 */	fmr f1, f31
/* 80B70378  4B 6F EE 89 */	bl SetR__8cM3dGCylFf
/* 80B7037C  38 7F 0F 68 */	addi r3, r31, 0xf68
/* 80B70380  38 81 00 08 */	addi r4, r1, 8
/* 80B70384  4B 6F EE 59 */	bl SetC__8cM3dGCylFRC4cXyz
/* 80B70388  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B7038C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B70390  38 63 23 3C */	addi r3, r3, 0x233c
/* 80B70394  38 9F 0E 44 */	addi r4, r31, 0xe44
/* 80B70398  4B 6F 48 11 */	bl Set__4cCcSFP8cCcD_Obj
lbl_80B7039C:
/* 80B7039C  38 7F 0E 44 */	addi r3, r31, 0xe44
/* 80B703A0  81 9F 0E 80 */	lwz r12, 0xe80(r31)
/* 80B703A4  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 80B703A8  7D 89 03 A6 */	mtctr r12
/* 80B703AC  4E 80 04 21 */	bctrl 
/* 80B703B0  38 7F 0E 44 */	addi r3, r31, 0xe44
/* 80B703B4  81 9F 0E 80 */	lwz r12, 0xe80(r31)
/* 80B703B8  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80B703BC  7D 89 03 A6 */	mtctr r12
/* 80B703C0  4E 80 04 21 */	bctrl 
/* 80B703C4  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 80B703C8  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80B703CC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80B703D0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B703D4  7C 08 03 A6 */	mtlr r0
/* 80B703D8  38 21 00 30 */	addi r1, r1, 0x30
/* 80B703DC  4E 80 00 20 */	blr 
