lbl_80253C08:
/* 80253C08  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80253C0C  7C 08 02 A6 */	mflr r0
/* 80253C10  90 01 00 44 */	stw r0, 0x44(r1)
/* 80253C14  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80253C18  93 C1 00 38 */	stw r30, 0x38(r1)
/* 80253C1C  7C 7E 1B 78 */	mr r30, r3
/* 80253C20  7C 9F 23 78 */	mr r31, r4
/* 80253C24  93 E3 00 04 */	stw r31, 4(r3)
/* 80253C28  28 05 00 00 */	cmplwi r5, 0
/* 80253C2C  41 82 00 0C */	beq lbl_80253C38
/* 80253C30  90 BE 00 08 */	stw r5, 8(r30)
/* 80253C34  48 00 00 0C */	b lbl_80253C40
lbl_80253C38:
/* 80253C38  4B DB B5 B5 */	bl mDoExt_getCurrentHeap__Fv
/* 80253C3C  90 7E 00 08 */	stw r3, 8(r30)
lbl_80253C40:
/* 80253C40  38 00 00 00 */	li r0, 0
/* 80253C44  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80253C48  90 1E 00 10 */	stw r0, 0x10(r30)
/* 80253C4C  90 1E 00 1C */	stw r0, 0x1c(r30)
/* 80253C50  90 1E 00 20 */	stw r0, 0x20(r30)
/* 80253C54  B0 1E 00 14 */	sth r0, 0x14(r30)
/* 80253C58  88 1E 00 19 */	lbz r0, 0x19(r30)
/* 80253C5C  28 00 00 00 */	cmplwi r0, 0
/* 80253C60  41 82 00 94 */	beq lbl_80253CF4
/* 80253C64  80 7E 00 04 */	lwz r3, 4(r30)
/* 80253C68  48 0A 3E 25 */	bl getFirstChildPane__7J2DPaneFv
/* 80253C6C  7C 64 1B 78 */	mr r4, r3
/* 80253C70  7F C3 F3 78 */	mr r3, r30
/* 80253C74  48 00 1D ED */	bl childPaneCount__13CPaneMgrAlphaFP7J2DPane
/* 80253C78  88 1E 00 19 */	lbz r0, 0x19(r30)
/* 80253C7C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80253C80  41 82 00 38 */	beq lbl_80253CB8
/* 80253C84  80 7E 00 08 */	lwz r3, 8(r30)
/* 80253C88  A8 1E 00 14 */	lha r0, 0x14(r30)
/* 80253C8C  1C 80 00 0C */	mulli r4, r0, 0xc
/* 80253C90  38 A0 00 20 */	li r5, 0x20
/* 80253C94  48 07 A8 41 */	bl alloc__7JKRHeapFUli
/* 80253C98  90 7E 00 1C */	stw r3, 0x1c(r30)
/* 80253C9C  80 1E 00 1C */	lwz r0, 0x1c(r30)
/* 80253CA0  90 1E 00 20 */	stw r0, 0x20(r30)
/* 80253CA4  80 7E 00 04 */	lwz r3, 4(r30)
/* 80253CA8  48 0A 3D E5 */	bl getFirstChildPane__7J2DPaneFv
/* 80253CAC  7C 64 1B 78 */	mr r4, r3
/* 80253CB0  7F C3 F3 78 */	mr r3, r30
/* 80253CB4  48 00 03 65 */	bl childPaneGetSize__8CPaneMgrFP7J2DPane
lbl_80253CB8:
/* 80253CB8  88 1E 00 19 */	lbz r0, 0x19(r30)
/* 80253CBC  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 80253CC0  41 82 00 34 */	beq lbl_80253CF4
/* 80253CC4  80 7E 00 08 */	lwz r3, 8(r30)
/* 80253CC8  A8 9E 00 14 */	lha r4, 0x14(r30)
/* 80253CCC  38 A0 00 20 */	li r5, 0x20
/* 80253CD0  48 07 A8 05 */	bl alloc__7JKRHeapFUli
/* 80253CD4  90 7E 00 0C */	stw r3, 0xc(r30)
/* 80253CD8  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 80253CDC  90 1E 00 10 */	stw r0, 0x10(r30)
/* 80253CE0  80 7E 00 04 */	lwz r3, 4(r30)
/* 80253CE4  48 0A 3D A9 */	bl getFirstChildPane__7J2DPaneFv
/* 80253CE8  7C 64 1B 78 */	mr r4, r3
/* 80253CEC  7F C3 F3 78 */	mr r3, r30
/* 80253CF0  48 00 1D DD */	bl childPaneGetAlpha__13CPaneMgrAlphaFP7J2DPane
lbl_80253CF4:
/* 80253CF4  7F E3 FB 78 */	mr r3, r31
/* 80253CF8  48 0A 34 09 */	bl getBounds__7J2DPaneFv
/* 80253CFC  C0 03 00 00 */	lfs f0, 0(r3)
/* 80253D00  D0 1E 00 24 */	stfs f0, 0x24(r30)
/* 80253D04  7F E3 FB 78 */	mr r3, r31
/* 80253D08  48 0A 33 F9 */	bl getBounds__7J2DPaneFv
/* 80253D0C  C0 03 00 04 */	lfs f0, 4(r3)
/* 80253D10  D0 1E 00 28 */	stfs f0, 0x28(r30)
/* 80253D14  7F C3 F3 78 */	mr r3, r30
/* 80253D18  48 00 05 D1 */	bl getGlobalPosX__8CPaneMgrFv
/* 80253D1C  D0 3E 00 2C */	stfs f1, 0x2c(r30)
/* 80253D20  7F C3 F3 78 */	mr r3, r30
/* 80253D24  48 00 06 41 */	bl getGlobalPosY__8CPaneMgrFv
/* 80253D28  D0 3E 00 30 */	stfs f1, 0x30(r30)
/* 80253D2C  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 80253D30  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 80253D34  EC 01 00 28 */	fsubs f0, f1, f0
/* 80253D38  D0 1E 00 34 */	stfs f0, 0x34(r30)
/* 80253D3C  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 80253D40  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 80253D44  EC 01 00 28 */	fsubs f0, f1, f0
/* 80253D48  D0 1E 00 38 */	stfs f0, 0x38(r30)
/* 80253D4C  80 7E 00 04 */	lwz r3, 4(r30)
/* 80253D50  C0 03 00 CC */	lfs f0, 0xcc(r3)
/* 80253D54  D0 1E 00 3C */	stfs f0, 0x3c(r30)
/* 80253D58  80 7E 00 04 */	lwz r3, 4(r30)
/* 80253D5C  C0 03 00 D0 */	lfs f0, 0xd0(r3)
/* 80253D60  D0 1E 00 40 */	stfs f0, 0x40(r30)
/* 80253D64  80 7E 00 04 */	lwz r3, 4(r30)
/* 80253D68  C0 03 00 D4 */	lfs f0, 0xd4(r3)
/* 80253D6C  D0 1E 00 44 */	stfs f0, 0x44(r30)
/* 80253D70  80 7E 00 04 */	lwz r3, 4(r30)
/* 80253D74  C0 03 00 D8 */	lfs f0, 0xd8(r3)
/* 80253D78  D0 1E 00 48 */	stfs f0, 0x48(r30)
/* 80253D7C  C0 1F 00 C0 */	lfs f0, 0xc0(r31)
/* 80253D80  D0 1E 00 4C */	stfs f0, 0x4c(r30)
/* 80253D84  C0 1F 00 C4 */	lfs f0, 0xc4(r31)
/* 80253D88  D0 1E 00 50 */	stfs f0, 0x50(r30)
/* 80253D8C  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 80253D90  D0 1E 00 54 */	stfs f0, 0x54(r30)
/* 80253D94  80 7F 00 08 */	lwz r3, 8(r31)
/* 80253D98  3C 03 AF BF */	addis r0, r3, 0xafbf
/* 80253D9C  28 00 4E 32 */	cmplwi r0, 0x4e32
/* 80253DA0  40 82 00 10 */	bne lbl_80253DB0
/* 80253DA4  38 00 00 FF */	li r0, 0xff
/* 80253DA8  98 1E 00 18 */	stb r0, 0x18(r30)
/* 80253DAC  48 00 00 0C */	b lbl_80253DB8
lbl_80253DB0:
/* 80253DB0  88 1F 00 B2 */	lbz r0, 0xb2(r31)
/* 80253DB4  98 1E 00 18 */	stb r0, 0x18(r30)
lbl_80253DB8:
/* 80253DB8  38 00 00 00 */	li r0, 0
/* 80253DBC  B0 1E 00 60 */	sth r0, 0x60(r30)
/* 80253DC0  B0 1E 00 62 */	sth r0, 0x62(r30)
/* 80253DC4  B0 1E 00 64 */	sth r0, 0x64(r30)
/* 80253DC8  B0 1E 00 66 */	sth r0, 0x66(r30)
/* 80253DCC  B0 1E 00 68 */	sth r0, 0x68(r30)
/* 80253DD0  B0 1E 00 6A */	sth r0, 0x6a(r30)
/* 80253DD4  B0 1E 00 16 */	sth r0, 0x16(r30)
/* 80253DD8  80 9E 00 04 */	lwz r4, 4(r30)
/* 80253DDC  80 C4 00 08 */	lwz r6, 8(r4)
/* 80253DE0  3C A0 54 42 */	lis r5, 0x5442 /* 0x54425833@ha */
/* 80253DE4  38 05 58 33 */	addi r0, r5, 0x5833 /* 0x54425833@l */
/* 80253DE8  7C 06 00 00 */	cmpw r6, r0
/* 80253DEC  40 80 00 34 */	bge lbl_80253E20
/* 80253DF0  3C 60 50 49 */	lis r3, 0x5049 /* 0x50494333@ha */
/* 80253DF4  38 03 43 33 */	addi r0, r3, 0x4333 /* 0x50494333@l */
/* 80253DF8  7C 06 00 00 */	cmpw r6, r0
/* 80253DFC  40 80 00 14 */	bge lbl_80253E10
/* 80253E00  38 03 43 31 */	addi r0, r3, 0x4331
/* 80253E04  7C 06 00 00 */	cmpw r6, r0
/* 80253E08  40 80 00 B8 */	bge lbl_80253EC0
/* 80253E0C  48 00 01 B4 */	b lbl_80253FC0
lbl_80253E10:
/* 80253E10  38 05 58 31 */	addi r0, r5, 0x5831
/* 80253E14  7C 06 00 00 */	cmpw r6, r0
/* 80253E18  40 80 01 28 */	bge lbl_80253F40
/* 80253E1C  48 00 01 A4 */	b lbl_80253FC0
lbl_80253E20:
/* 80253E20  3C 60 57 49 */	lis r3, 0x5749 /* 0x57494E33@ha */
/* 80253E24  38 03 4E 33 */	addi r0, r3, 0x4E33 /* 0x57494E33@l */
/* 80253E28  7C 06 00 00 */	cmpw r6, r0
/* 80253E2C  40 80 01 94 */	bge lbl_80253FC0
/* 80253E30  38 03 4E 31 */	addi r0, r3, 0x4e31
/* 80253E34  7C 06 00 00 */	cmpw r6, r0
/* 80253E38  40 80 00 08 */	bge lbl_80253E40
/* 80253E3C  48 00 01 84 */	b lbl_80253FC0
lbl_80253E40:
/* 80253E40  38 61 00 30 */	addi r3, r1, 0x30
/* 80253E44  81 84 00 00 */	lwz r12, 0(r4)
/* 80253E48  81 8C 00 B0 */	lwz r12, 0xb0(r12)
/* 80253E4C  7D 89 03 A6 */	mtctr r12
/* 80253E50  4E 80 04 21 */	bctrl 
/* 80253E54  80 01 00 30 */	lwz r0, 0x30(r1)
/* 80253E58  90 01 00 34 */	stw r0, 0x34(r1)
/* 80253E5C  88 01 00 34 */	lbz r0, 0x34(r1)
/* 80253E60  98 1E 00 58 */	stb r0, 0x58(r30)
/* 80253E64  88 01 00 35 */	lbz r0, 0x35(r1)
/* 80253E68  98 1E 00 59 */	stb r0, 0x59(r30)
/* 80253E6C  88 01 00 36 */	lbz r0, 0x36(r1)
/* 80253E70  98 1E 00 5A */	stb r0, 0x5a(r30)
/* 80253E74  88 01 00 37 */	lbz r0, 0x37(r1)
/* 80253E78  98 1E 00 5B */	stb r0, 0x5b(r30)
/* 80253E7C  38 61 00 28 */	addi r3, r1, 0x28
/* 80253E80  80 9E 00 04 */	lwz r4, 4(r30)
/* 80253E84  81 84 00 00 */	lwz r12, 0(r4)
/* 80253E88  81 8C 00 AC */	lwz r12, 0xac(r12)
/* 80253E8C  7D 89 03 A6 */	mtctr r12
/* 80253E90  4E 80 04 21 */	bctrl 
/* 80253E94  80 01 00 28 */	lwz r0, 0x28(r1)
/* 80253E98  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80253E9C  88 01 00 2C */	lbz r0, 0x2c(r1)
/* 80253EA0  98 1E 00 5C */	stb r0, 0x5c(r30)
/* 80253EA4  88 01 00 2D */	lbz r0, 0x2d(r1)
/* 80253EA8  98 1E 00 5D */	stb r0, 0x5d(r30)
/* 80253EAC  88 01 00 2E */	lbz r0, 0x2e(r1)
/* 80253EB0  98 1E 00 5E */	stb r0, 0x5e(r30)
/* 80253EB4  88 01 00 2F */	lbz r0, 0x2f(r1)
/* 80253EB8  98 1E 00 5F */	stb r0, 0x5f(r30)
/* 80253EBC  48 00 01 2C */	b lbl_80253FE8
lbl_80253EC0:
/* 80253EC0  38 61 00 20 */	addi r3, r1, 0x20
/* 80253EC4  81 84 00 00 */	lwz r12, 0(r4)
/* 80253EC8  81 8C 01 38 */	lwz r12, 0x138(r12)
/* 80253ECC  7D 89 03 A6 */	mtctr r12
/* 80253ED0  4E 80 04 21 */	bctrl 
/* 80253ED4  80 01 00 20 */	lwz r0, 0x20(r1)
/* 80253ED8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80253EDC  88 01 00 24 */	lbz r0, 0x24(r1)
/* 80253EE0  98 1E 00 58 */	stb r0, 0x58(r30)
/* 80253EE4  88 01 00 25 */	lbz r0, 0x25(r1)
/* 80253EE8  98 1E 00 59 */	stb r0, 0x59(r30)
/* 80253EEC  88 01 00 26 */	lbz r0, 0x26(r1)
/* 80253EF0  98 1E 00 5A */	stb r0, 0x5a(r30)
/* 80253EF4  88 01 00 27 */	lbz r0, 0x27(r1)
/* 80253EF8  98 1E 00 5B */	stb r0, 0x5b(r30)
/* 80253EFC  38 61 00 18 */	addi r3, r1, 0x18
/* 80253F00  80 9E 00 04 */	lwz r4, 4(r30)
/* 80253F04  81 84 00 00 */	lwz r12, 0(r4)
/* 80253F08  81 8C 01 34 */	lwz r12, 0x134(r12)
/* 80253F0C  7D 89 03 A6 */	mtctr r12
/* 80253F10  4E 80 04 21 */	bctrl 
/* 80253F14  80 01 00 18 */	lwz r0, 0x18(r1)
/* 80253F18  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80253F1C  88 01 00 1C */	lbz r0, 0x1c(r1)
/* 80253F20  98 1E 00 5C */	stb r0, 0x5c(r30)
/* 80253F24  88 01 00 1D */	lbz r0, 0x1d(r1)
/* 80253F28  98 1E 00 5D */	stb r0, 0x5d(r30)
/* 80253F2C  88 01 00 1E */	lbz r0, 0x1e(r1)
/* 80253F30  98 1E 00 5E */	stb r0, 0x5e(r30)
/* 80253F34  88 01 00 1F */	lbz r0, 0x1f(r1)
/* 80253F38  98 1E 00 5F */	stb r0, 0x5f(r30)
/* 80253F3C  48 00 00 AC */	b lbl_80253FE8
lbl_80253F40:
/* 80253F40  38 61 00 10 */	addi r3, r1, 0x10
/* 80253F44  81 84 00 00 */	lwz r12, 0(r4)
/* 80253F48  81 8C 00 B4 */	lwz r12, 0xb4(r12)
/* 80253F4C  7D 89 03 A6 */	mtctr r12
/* 80253F50  4E 80 04 21 */	bctrl 
/* 80253F54  80 01 00 10 */	lwz r0, 0x10(r1)
/* 80253F58  90 01 00 14 */	stw r0, 0x14(r1)
/* 80253F5C  88 01 00 14 */	lbz r0, 0x14(r1)
/* 80253F60  98 1E 00 58 */	stb r0, 0x58(r30)
/* 80253F64  88 01 00 15 */	lbz r0, 0x15(r1)
/* 80253F68  98 1E 00 59 */	stb r0, 0x59(r30)
/* 80253F6C  88 01 00 16 */	lbz r0, 0x16(r1)
/* 80253F70  98 1E 00 5A */	stb r0, 0x5a(r30)
/* 80253F74  88 01 00 17 */	lbz r0, 0x17(r1)
/* 80253F78  98 1E 00 5B */	stb r0, 0x5b(r30)
/* 80253F7C  38 61 00 08 */	addi r3, r1, 8
/* 80253F80  80 9E 00 04 */	lwz r4, 4(r30)
/* 80253F84  81 84 00 00 */	lwz r12, 0(r4)
/* 80253F88  81 8C 00 B0 */	lwz r12, 0xb0(r12)
/* 80253F8C  7D 89 03 A6 */	mtctr r12
/* 80253F90  4E 80 04 21 */	bctrl 
/* 80253F94  80 01 00 08 */	lwz r0, 8(r1)
/* 80253F98  90 01 00 0C */	stw r0, 0xc(r1)
/* 80253F9C  88 01 00 0C */	lbz r0, 0xc(r1)
/* 80253FA0  98 1E 00 5C */	stb r0, 0x5c(r30)
/* 80253FA4  88 01 00 0D */	lbz r0, 0xd(r1)
/* 80253FA8  98 1E 00 5D */	stb r0, 0x5d(r30)
/* 80253FAC  88 01 00 0E */	lbz r0, 0xe(r1)
/* 80253FB0  98 1E 00 5E */	stb r0, 0x5e(r30)
/* 80253FB4  88 01 00 0F */	lbz r0, 0xf(r1)
/* 80253FB8  98 1E 00 5F */	stb r0, 0x5f(r30)
/* 80253FBC  48 00 00 2C */	b lbl_80253FE8
lbl_80253FC0:
/* 80253FC0  38 00 00 FF */	li r0, 0xff
/* 80253FC4  98 1E 00 58 */	stb r0, 0x58(r30)
/* 80253FC8  98 1E 00 59 */	stb r0, 0x59(r30)
/* 80253FCC  98 1E 00 5A */	stb r0, 0x5a(r30)
/* 80253FD0  98 1E 00 5B */	stb r0, 0x5b(r30)
/* 80253FD4  38 00 00 00 */	li r0, 0
/* 80253FD8  98 1E 00 5C */	stb r0, 0x5c(r30)
/* 80253FDC  98 1E 00 5D */	stb r0, 0x5d(r30)
/* 80253FE0  98 1E 00 5E */	stb r0, 0x5e(r30)
/* 80253FE4  98 1E 00 5F */	stb r0, 0x5f(r30)
lbl_80253FE8:
/* 80253FE8  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80253FEC  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80253FF0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80253FF4  7C 08 03 A6 */	mtlr r0
/* 80253FF8  38 21 00 40 */	addi r1, r1, 0x40
/* 80253FFC  4E 80 00 20 */	blr 
