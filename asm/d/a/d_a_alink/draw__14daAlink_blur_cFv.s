lbl_80125BF4:
/* 80125BF4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80125BF8  7C 08 02 A6 */	mflr r0
/* 80125BFC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80125C00  39 61 00 20 */	addi r11, r1, 0x20
/* 80125C04  48 23 C5 D5 */	bl _savegpr_28
/* 80125C08  7C 7F 1B 78 */	mr r31, r3
/* 80125C0C  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80125C10  38 63 4A C8 */	addi r3, r3, j3dSys@l
/* 80125C14  48 1E AB 29 */	bl reinitGX__6J3DSysFv
/* 80125C18  38 60 00 00 */	li r3, 0
/* 80125C1C  48 23 94 B9 */	bl GXSetNumIndStages
/* 80125C20  80 1F 00 20 */	lwz r0, 0x20(r31)
/* 80125C24  38 6D 81 24 */	la r3, nColor0(r13) /* 804506A4-_SDA_BASE_ */
/* 80125C28  98 03 00 03 */	stb r0, 3(r3)
/* 80125C2C  3C 60 80 42 */	lis r3, texObj@ha
/* 80125C30  38 63 56 CC */	addi r3, r3, texObj@l
/* 80125C34  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 80125C38  80 04 00 1C */	lwz r0, 0x1c(r4)
/* 80125C3C  7C 84 02 14 */	add r4, r4, r0
/* 80125C40  38 A0 00 10 */	li r5, 0x10
/* 80125C44  38 C0 00 04 */	li r6, 4
/* 80125C48  38 E0 00 00 */	li r7, 0
/* 80125C4C  39 00 00 00 */	li r8, 0
/* 80125C50  39 20 00 00 */	li r9, 0
/* 80125C54  39 40 00 00 */	li r10, 0
/* 80125C58  48 23 81 E9 */	bl GXInitTexObj
/* 80125C5C  3C 60 80 42 */	lis r3, texObj@ha
/* 80125C60  38 63 56 CC */	addi r3, r3, texObj@l
/* 80125C64  38 80 00 01 */	li r4, 1
/* 80125C68  38 A0 00 01 */	li r5, 1
/* 80125C6C  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 80125C70  FC 40 08 90 */	fmr f2, f1
/* 80125C74  FC 60 08 90 */	fmr f3, f1
/* 80125C78  38 C0 00 00 */	li r6, 0
/* 80125C7C  38 E0 00 00 */	li r7, 0
/* 80125C80  39 00 00 00 */	li r8, 0
/* 80125C84  48 23 84 51 */	bl GXInitTexObjLOD
/* 80125C88  3C 60 80 42 */	lis r3, texObj@ha
/* 80125C8C  38 63 56 CC */	addi r3, r3, texObj@l
/* 80125C90  38 80 00 00 */	li r4, 0
/* 80125C94  48 23 87 81 */	bl GXLoadTexObj
/* 80125C98  38 60 00 00 */	li r3, 0
/* 80125C9C  38 80 00 09 */	li r4, 9
/* 80125CA0  38 A0 00 01 */	li r5, 1
/* 80125CA4  38 C0 00 04 */	li r6, 4
/* 80125CA8  38 E0 00 00 */	li r7, 0
/* 80125CAC  48 23 59 19 */	bl GXSetVtxAttrFmt
/* 80125CB0  38 60 00 00 */	li r3, 0
/* 80125CB4  38 80 00 0D */	li r4, 0xd
/* 80125CB8  38 A0 00 01 */	li r5, 1
/* 80125CBC  38 C0 00 03 */	li r6, 3
/* 80125CC0  38 E0 00 08 */	li r7, 8
/* 80125CC4  48 23 59 01 */	bl GXSetVtxAttrFmt
/* 80125CC8  48 23 58 C5 */	bl GXClearVtxDesc
/* 80125CCC  38 60 00 09 */	li r3, 9
/* 80125CD0  38 80 00 01 */	li r4, 1
/* 80125CD4  48 23 51 E5 */	bl GXSetVtxDesc
/* 80125CD8  38 60 00 0D */	li r3, 0xd
/* 80125CDC  38 80 00 01 */	li r4, 1
/* 80125CE0  48 23 51 D9 */	bl GXSetVtxDesc
/* 80125CE4  38 60 00 00 */	li r3, 0
/* 80125CE8  48 23 7E 49 */	bl GXSetNumChans
/* 80125CEC  80 0D 81 24 */	lwz r0, nColor0(r13)
/* 80125CF0  90 01 00 08 */	stw r0, 8(r1)
/* 80125CF4  38 60 00 01 */	li r3, 1
/* 80125CF8  38 81 00 08 */	addi r4, r1, 8
/* 80125CFC  48 23 96 81 */	bl GXSetTevColor
/* 80125D00  38 60 00 01 */	li r3, 1
/* 80125D04  48 23 60 F9 */	bl GXSetNumTexGens
/* 80125D08  38 60 00 00 */	li r3, 0
/* 80125D0C  38 80 00 01 */	li r4, 1
/* 80125D10  38 A0 00 04 */	li r5, 4
/* 80125D14  38 C0 00 3C */	li r6, 0x3c
/* 80125D18  38 E0 00 00 */	li r7, 0
/* 80125D1C  39 00 00 7D */	li r8, 0x7d
/* 80125D20  48 23 5E 5D */	bl GXSetTexCoordGen2
/* 80125D24  38 60 00 01 */	li r3, 1
/* 80125D28  48 23 9B 69 */	bl GXSetNumTevStages
/* 80125D2C  38 60 00 00 */	li r3, 0
/* 80125D30  38 80 00 00 */	li r4, 0
/* 80125D34  38 A0 00 00 */	li r5, 0
/* 80125D38  38 C0 00 FF */	li r6, 0xff
/* 80125D3C  48 23 99 B9 */	bl GXSetTevOrder
/* 80125D40  38 60 00 00 */	li r3, 0
/* 80125D44  38 80 00 0F */	li r4, 0xf
/* 80125D48  38 A0 00 0F */	li r5, 0xf
/* 80125D4C  38 C0 00 0F */	li r6, 0xf
/* 80125D50  38 E0 00 02 */	li r7, 2
/* 80125D54  48 23 94 D1 */	bl GXSetTevColorIn
/* 80125D58  38 60 00 00 */	li r3, 0
/* 80125D5C  38 80 00 00 */	li r4, 0
/* 80125D60  38 A0 00 00 */	li r5, 0
/* 80125D64  38 C0 00 00 */	li r6, 0
/* 80125D68  38 E0 00 01 */	li r7, 1
/* 80125D6C  39 00 00 00 */	li r8, 0
/* 80125D70  48 23 95 3D */	bl GXSetTevColorOp
/* 80125D74  38 60 00 00 */	li r3, 0
/* 80125D78  38 80 00 07 */	li r4, 7
/* 80125D7C  38 A0 00 01 */	li r5, 1
/* 80125D80  38 C0 00 04 */	li r6, 4
/* 80125D84  38 E0 00 07 */	li r7, 7
/* 80125D88  48 23 94 E1 */	bl GXSetTevAlphaIn
/* 80125D8C  38 60 00 00 */	li r3, 0
/* 80125D90  38 80 00 00 */	li r4, 0
/* 80125D94  38 A0 00 00 */	li r5, 0
/* 80125D98  38 C0 00 00 */	li r6, 0
/* 80125D9C  38 E0 00 01 */	li r7, 1
/* 80125DA0  39 00 00 00 */	li r8, 0
/* 80125DA4  48 23 95 71 */	bl GXSetTevAlphaOp
/* 80125DA8  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80125DAC  38 63 4A C8 */	addi r3, r3, j3dSys@l
/* 80125DB0  38 80 00 00 */	li r4, 0
/* 80125DB4  48 23 A4 99 */	bl GXLoadPosMtxImm
/* 80125DB8  38 60 00 00 */	li r3, 0
/* 80125DBC  48 23 A5 31 */	bl GXSetCurrentMtx
/* 80125DC0  38 60 00 01 */	li r3, 1
/* 80125DC4  38 80 00 04 */	li r4, 4
/* 80125DC8  38 A0 00 05 */	li r5, 5
/* 80125DCC  38 C0 00 0F */	li r6, 0xf
/* 80125DD0  48 23 9E 21 */	bl GXSetBlendMode
/* 80125DD4  38 60 00 00 */	li r3, 0
/* 80125DD8  48 23 6B AD */	bl GXSetCullMode
/* 80125DDC  38 60 00 01 */	li r3, 1
/* 80125DE0  38 80 00 03 */	li r4, 3
/* 80125DE4  38 A0 00 00 */	li r5, 0
/* 80125DE8  48 23 9E B5 */	bl GXSetZMode
/* 80125DEC  38 60 00 04 */	li r3, 4
/* 80125DF0  38 80 00 00 */	li r4, 0
/* 80125DF4  38 A0 00 01 */	li r5, 1
/* 80125DF8  38 C0 00 04 */	li r6, 4
/* 80125DFC  38 E0 00 00 */	li r7, 0
/* 80125E00  48 23 98 25 */	bl GXSetAlphaCompare
/* 80125E04  38 80 00 FF */	li r4, 0xff
/* 80125E08  80 BF 00 14 */	lwz r5, 0x14(r31)
/* 80125E0C  7C A3 0E 70 */	srawi r3, r5, 1
/* 80125E10  38 03 00 01 */	addi r0, r3, 1
/* 80125E14  7F C4 03 D6 */	divw r30, r4, r0
/* 80125E18  7F DD 07 34 */	extsh r29, r30
/* 80125E1C  3B 80 00 00 */	li r28, 0
/* 80125E20  38 60 00 80 */	li r3, 0x80
/* 80125E24  38 80 00 00 */	li r4, 0
/* 80125E28  54 A5 10 3A */	slwi r5, r5, 2
/* 80125E2C  38 05 00 04 */	addi r0, r5, 4
/* 80125E30  54 05 04 3E */	clrlwi r5, r0, 0x10
/* 80125E34  48 23 69 31 */	bl GXBegin
/* 80125E38  80 9F 00 14 */	lwz r4, 0x14(r31)
/* 80125E3C  3C A0 CC 01 */	lis r5, 0xcc01
/* 80125E40  1C 64 00 0C */	mulli r3, r4, 0xc
/* 80125E44  38 04 00 01 */	addi r0, r4, 1
/* 80125E48  7C 09 03 A6 */	mtctr r0
/* 80125E4C  2C 04 00 00 */	cmpwi r4, 0
/* 80125E50  41 80 00 A4 */	blt lbl_80125EF4
lbl_80125E54:
/* 80125E54  7C DF 1A 14 */	add r6, r31, r3
/* 80125E58  C0 46 00 40 */	lfs f2, 0x40(r6)
/* 80125E5C  C0 26 00 3C */	lfs f1, 0x3c(r6)
/* 80125E60  C0 06 00 38 */	lfs f0, 0x38(r6)
/* 80125E64  D0 05 80 00 */	stfs f0, -0x8000(r5)
/* 80125E68  D0 25 80 00 */	stfs f1, -0x8000(r5)
/* 80125E6C  D0 45 80 00 */	stfs f2, -0x8000(r5)
/* 80125E70  B3 A5 80 00 */	sth r29, -0x8000(r5)
/* 80125E74  38 80 00 00 */	li r4, 0
/* 80125E78  B0 85 80 00 */	sth r4, -0x8000(r5)
/* 80125E7C  C0 46 03 10 */	lfs f2, 0x310(r6)
/* 80125E80  C0 26 03 0C */	lfs f1, 0x30c(r6)
/* 80125E84  C0 06 03 08 */	lfs f0, 0x308(r6)
/* 80125E88  D0 05 80 00 */	stfs f0, -0x8000(r5)
/* 80125E8C  D0 25 80 00 */	stfs f1, -0x8000(r5)
/* 80125E90  D0 45 80 00 */	stfs f2, -0x8000(r5)
/* 80125E94  B3 A5 80 00 */	sth r29, -0x8000(r5)
/* 80125E98  38 00 00 FF */	li r0, 0xff
/* 80125E9C  B0 05 80 00 */	sth r0, -0x8000(r5)
/* 80125EA0  C0 46 03 1C */	lfs f2, 0x31c(r6)
/* 80125EA4  C0 26 03 18 */	lfs f1, 0x318(r6)
/* 80125EA8  C0 06 03 14 */	lfs f0, 0x314(r6)
/* 80125EAC  D0 05 80 00 */	stfs f0, -0x8000(r5)
/* 80125EB0  D0 25 80 00 */	stfs f1, -0x8000(r5)
/* 80125EB4  D0 45 80 00 */	stfs f2, -0x8000(r5)
/* 80125EB8  B3 85 80 00 */	sth r28, -0x8000(r5)
/* 80125EBC  B0 05 80 00 */	sth r0, -0x8000(r5)
/* 80125EC0  C0 46 00 4C */	lfs f2, 0x4c(r6)
/* 80125EC4  C0 26 00 48 */	lfs f1, 0x48(r6)
/* 80125EC8  C0 06 00 44 */	lfs f0, 0x44(r6)
/* 80125ECC  D0 05 80 00 */	stfs f0, -0x8000(r5)
/* 80125ED0  D0 25 80 00 */	stfs f1, -0x8000(r5)
/* 80125ED4  D0 45 80 00 */	stfs f2, -0x8000(r5)
/* 80125ED8  B3 85 80 00 */	sth r28, -0x8000(r5)
/* 80125EDC  B0 85 80 00 */	sth r4, -0x8000(r5)
/* 80125EE0  7F BC EB 78 */	mr r28, r29
/* 80125EE4  7C 1D F2 14 */	add r0, r29, r30
/* 80125EE8  7C 1D 07 34 */	extsh r29, r0
/* 80125EEC  38 63 FF F4 */	addi r3, r3, -12
/* 80125EF0  42 00 FF 64 */	bdnz lbl_80125E54
lbl_80125EF4:
/* 80125EF4  38 00 00 00 */	li r0, 0
/* 80125EF8  90 0D 90 50 */	stw r0, sOldVcdVatCmd__8J3DShape(r13)
/* 80125EFC  39 61 00 20 */	addi r11, r1, 0x20
/* 80125F00  48 23 C3 25 */	bl _restgpr_28
/* 80125F04  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80125F08  7C 08 03 A6 */	mtlr r0
/* 80125F0C  38 21 00 20 */	addi r1, r1, 0x20
/* 80125F10  4E 80 00 20 */	blr 
