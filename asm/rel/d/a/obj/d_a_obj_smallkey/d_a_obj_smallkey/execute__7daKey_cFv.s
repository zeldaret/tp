lbl_80CDB404:
/* 80CDB404  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CDB408  7C 08 02 A6 */	mflr r0
/* 80CDB40C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CDB410  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CDB414  7C 7F 1B 78 */	mr r31, r3
/* 80CDB418  3C 60 80 CE */	lis r3, cNullVec__6Z2Calc@ha
/* 80CDB41C  38 83 B8 A8 */	addi r4, r3, cNullVec__6Z2Calc@l
/* 80CDB420  3C 60 80 CE */	lis r3, data_80CDBAB0@ha
/* 80CDB424  8C 03 BA B0 */	lbzu r0, data_80CDBAB0@l(r3)
/* 80CDB428  7C 00 07 75 */	extsb. r0, r0
/* 80CDB42C  40 82 00 D0 */	bne lbl_80CDB4FC
/* 80CDB430  80 A4 00 20 */	lwz r5, 0x20(r4)
/* 80CDB434  80 04 00 24 */	lwz r0, 0x24(r4)
/* 80CDB438  90 A4 00 80 */	stw r5, 0x80(r4)
/* 80CDB43C  90 04 00 84 */	stw r0, 0x84(r4)
/* 80CDB440  80 04 00 28 */	lwz r0, 0x28(r4)
/* 80CDB444  90 04 00 88 */	stw r0, 0x88(r4)
/* 80CDB448  38 C4 00 80 */	addi r6, r4, 0x80
/* 80CDB44C  80 A4 00 2C */	lwz r5, 0x2c(r4)
/* 80CDB450  80 04 00 30 */	lwz r0, 0x30(r4)
/* 80CDB454  90 A6 00 0C */	stw r5, 0xc(r6)
/* 80CDB458  90 06 00 10 */	stw r0, 0x10(r6)
/* 80CDB45C  80 04 00 34 */	lwz r0, 0x34(r4)
/* 80CDB460  90 06 00 14 */	stw r0, 0x14(r6)
/* 80CDB464  80 A4 00 38 */	lwz r5, 0x38(r4)
/* 80CDB468  80 04 00 3C */	lwz r0, 0x3c(r4)
/* 80CDB46C  90 A6 00 18 */	stw r5, 0x18(r6)
/* 80CDB470  90 06 00 1C */	stw r0, 0x1c(r6)
/* 80CDB474  80 04 00 40 */	lwz r0, 0x40(r4)
/* 80CDB478  90 06 00 20 */	stw r0, 0x20(r6)
/* 80CDB47C  80 A4 00 44 */	lwz r5, 0x44(r4)
/* 80CDB480  80 04 00 48 */	lwz r0, 0x48(r4)
/* 80CDB484  90 A6 00 24 */	stw r5, 0x24(r6)
/* 80CDB488  90 06 00 28 */	stw r0, 0x28(r6)
/* 80CDB48C  80 04 00 4C */	lwz r0, 0x4c(r4)
/* 80CDB490  90 06 00 2C */	stw r0, 0x2c(r6)
/* 80CDB494  80 A4 00 50 */	lwz r5, 0x50(r4)
/* 80CDB498  80 04 00 54 */	lwz r0, 0x54(r4)
/* 80CDB49C  90 A6 00 30 */	stw r5, 0x30(r6)
/* 80CDB4A0  90 06 00 34 */	stw r0, 0x34(r6)
/* 80CDB4A4  80 04 00 58 */	lwz r0, 0x58(r4)
/* 80CDB4A8  90 06 00 38 */	stw r0, 0x38(r6)
/* 80CDB4AC  80 A4 00 5C */	lwz r5, 0x5c(r4)
/* 80CDB4B0  80 04 00 60 */	lwz r0, 0x60(r4)
/* 80CDB4B4  90 A6 00 3C */	stw r5, 0x3c(r6)
/* 80CDB4B8  90 06 00 40 */	stw r0, 0x40(r6)
/* 80CDB4BC  80 04 00 64 */	lwz r0, 0x64(r4)
/* 80CDB4C0  90 06 00 44 */	stw r0, 0x44(r6)
/* 80CDB4C4  80 A4 00 68 */	lwz r5, 0x68(r4)
/* 80CDB4C8  80 04 00 6C */	lwz r0, 0x6c(r4)
/* 80CDB4CC  90 A6 00 48 */	stw r5, 0x48(r6)
/* 80CDB4D0  90 06 00 4C */	stw r0, 0x4c(r6)
/* 80CDB4D4  80 04 00 70 */	lwz r0, 0x70(r4)
/* 80CDB4D8  90 06 00 50 */	stw r0, 0x50(r6)
/* 80CDB4DC  80 A4 00 74 */	lwz r5, 0x74(r4)
/* 80CDB4E0  80 04 00 78 */	lwz r0, 0x78(r4)
/* 80CDB4E4  90 A6 00 54 */	stw r5, 0x54(r6)
/* 80CDB4E8  90 06 00 58 */	stw r0, 0x58(r6)
/* 80CDB4EC  80 04 00 7C */	lwz r0, 0x7c(r4)
/* 80CDB4F0  90 06 00 5C */	stw r0, 0x5c(r6)
/* 80CDB4F4  38 00 00 01 */	li r0, 1
/* 80CDB4F8  98 03 00 00 */	stb r0, 0(r3)
lbl_80CDB4FC:
/* 80CDB4FC  C0 1F 04 F8 */	lfs f0, 0x4f8(r31)
/* 80CDB500  D0 1F 09 6C */	stfs f0, 0x96c(r31)
/* 80CDB504  C0 1F 04 FC */	lfs f0, 0x4fc(r31)
/* 80CDB508  D0 1F 09 70 */	stfs f0, 0x970(r31)
/* 80CDB50C  C0 1F 05 00 */	lfs f0, 0x500(r31)
/* 80CDB510  D0 1F 09 74 */	stfs f0, 0x974(r31)
/* 80CDB514  80 7F 09 30 */	lwz r3, 0x930(r31)
/* 80CDB518  38 03 00 01 */	addi r0, r3, 1
/* 80CDB51C  90 1F 09 30 */	stw r0, 0x930(r31)
/* 80CDB520  7F E3 FB 78 */	mr r3, r31
/* 80CDB524  88 1F 09 34 */	lbz r0, 0x934(r31)
/* 80CDB528  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80CDB52C  39 84 00 80 */	addi r12, r4, 0x80
/* 80CDB530  7D 8C 02 14 */	add r12, r12, r0
/* 80CDB534  4B 68 6B 50 */	b __ptmf_scall
/* 80CDB538  60 00 00 00 */	nop 
/* 80CDB53C  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80CDB540  D0 1F 05 38 */	stfs f0, 0x538(r31)
/* 80CDB544  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80CDB548  D0 1F 05 3C */	stfs f0, 0x53c(r31)
/* 80CDB54C  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80CDB550  D0 1F 05 40 */	stfs f0, 0x540(r31)
/* 80CDB554  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80CDB558  D0 1F 05 50 */	stfs f0, 0x550(r31)
/* 80CDB55C  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80CDB560  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 80CDB564  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80CDB568  D0 1F 05 58 */	stfs f0, 0x558(r31)
/* 80CDB56C  7F E3 FB 78 */	mr r3, r31
/* 80CDB570  4B FF FB B9 */	bl effectCtrl__7daKey_cFv
/* 80CDB574  7F E3 FB 78 */	mr r3, r31
/* 80CDB578  4B FF E9 F1 */	bl setBaseMtx__7daKey_cFv
/* 80CDB57C  38 7F 09 04 */	addi r3, r31, 0x904
/* 80CDB580  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80CDB584  4B 59 3C 58 */	b SetC__8cM3dGCylFRC4cXyz
/* 80CDB588  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CDB58C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CDB590  38 63 23 3C */	addi r3, r3, 0x233c
/* 80CDB594  38 9F 07 E0 */	addi r4, r31, 0x7e0
/* 80CDB598  4B 58 96 10 */	b Set__4cCcSFP8cCcD_Obj
/* 80CDB59C  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80CDB5A0  54 03 C6 3E */	rlwinm r3, r0, 0x18, 0x18, 0x1f
/* 80CDB5A4  38 80 00 00 */	li r4, 0
/* 80CDB5A8  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80CDB5AC  38 C0 FF FF */	li r6, -1
/* 80CDB5B0  4B 3C 0E 1C */	b setPosition__7dTres_cFiUcPC3Veci
/* 80CDB5B4  38 00 00 00 */	li r0, 0
/* 80CDB5B8  98 1F 09 84 */	stb r0, 0x984(r31)
/* 80CDB5BC  38 60 00 01 */	li r3, 1
/* 80CDB5C0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CDB5C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CDB5C8  7C 08 03 A6 */	mtlr r0
/* 80CDB5CC  38 21 00 10 */	addi r1, r1, 0x10
/* 80CDB5D0  4E 80 00 20 */	blr 
