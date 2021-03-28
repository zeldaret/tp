lbl_80461874:
/* 80461874  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80461878  7C 08 02 A6 */	mflr r0
/* 8046187C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80461880  39 61 00 30 */	addi r11, r1, 0x30
/* 80461884  4B F0 09 54 */	b _savegpr_28
/* 80461888  7C 7D 1B 78 */	mr r29, r3
/* 8046188C  3C 60 80 46 */	lis r3, lit_4018@ha
/* 80461890  3B E3 68 20 */	addi r31, r3, lit_4018@l
/* 80461894  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80461898  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8046189C  83 C3 5D AC */	lwz r30, 0x5dac(r3)
/* 804618A0  C0 5E 04 D0 */	lfs f2, 0x4d0(r30)
/* 804618A4  D0 41 00 08 */	stfs f2, 8(r1)
/* 804618A8  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 804618AC  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 804618B0  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 804618B4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 804618B8  A8 7D 04 E6 */	lha r3, 0x4e6(r29)
/* 804618BC  38 03 7F FF */	addi r0, r3, 0x7fff
/* 804618C0  7C 1C 07 34 */	extsh r28, r0
/* 804618C4  D0 41 00 08 */	stfs f2, 8(r1)
/* 804618C8  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 804618CC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 804618D0  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 804618D4  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 804618D8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 804618DC  88 1D 06 CB */	lbz r0, 0x6cb(r29)
/* 804618E0  28 00 00 0C */	cmplwi r0, 0xc
/* 804618E4  41 82 00 14 */	beq lbl_804618F8
/* 804618E8  28 00 00 0E */	cmplwi r0, 0xe
/* 804618EC  41 82 00 0C */	beq lbl_804618F8
/* 804618F0  28 00 00 10 */	cmplwi r0, 0x10
/* 804618F4  40 82 00 10 */	bne lbl_80461904
lbl_804618F8:
/* 804618F8  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 804618FC  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80461900  48 00 00 0C */	b lbl_8046190C
lbl_80461904:
/* 80461904  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80461908  D0 01 00 14 */	stfs f0, 0x14(r1)
lbl_8046190C:
/* 8046190C  A8 9D 04 B6 */	lha r4, 0x4b6(r29)
/* 80461910  88 1D 06 8C */	lbz r0, 0x68c(r29)
/* 80461914  28 00 00 00 */	cmplwi r0, 0
/* 80461918  40 82 00 0C */	bne lbl_80461924
/* 8046191C  38 04 7F FF */	addi r0, r4, 0x7fff
/* 80461920  7C 04 07 34 */	extsh r4, r0
lbl_80461924:
/* 80461924  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80461928  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8046192C  4B BA AA B0 */	b mDoMtx_YrotS__FPA4_fs
/* 80461930  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80461934  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80461938  38 81 00 14 */	addi r4, r1, 0x14
/* 8046193C  7C 85 23 78 */	mr r5, r4
/* 80461940  4B EE 54 2C */	b PSMTXMultVec
/* 80461944  38 61 00 14 */	addi r3, r1, 0x14
/* 80461948  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 8046194C  7C 65 1B 78 */	mr r5, r3
/* 80461950  4B EE 57 40 */	b PSVECAdd
/* 80461954  C0 41 00 14 */	lfs f2, 0x14(r1)
/* 80461958  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 8046195C  57 80 04 38 */	rlwinm r0, r28, 0, 0x10, 0x1c
/* 80461960  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80461964  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80461968  7C 03 04 2E */	lfsx f0, r3, r0
/* 8046196C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80461970  EC A2 00 2A */	fadds f5, f2, f0
/* 80461974  D0 A1 00 14 */	stfs f5, 0x14(r1)
/* 80461978  C0 41 00 1C */	lfs f2, 0x1c(r1)
/* 8046197C  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 80461980  7C 63 02 14 */	add r3, r3, r0
/* 80461984  C0 03 00 04 */	lfs f0, 4(r3)
/* 80461988  EC 01 00 32 */	fmuls f0, f1, f0
/* 8046198C  EC 82 00 2A */	fadds f4, f2, f0
/* 80461990  D0 81 00 1C */	stfs f4, 0x1c(r1)
/* 80461994  A8 1D 06 DC */	lha r0, 0x6dc(r29)
/* 80461998  2C 00 00 00 */	cmpwi r0, 0
/* 8046199C  40 81 00 64 */	ble lbl_80461A00
/* 804619A0  C0 7F 00 24 */	lfs f3, 0x24(r31)
/* 804619A4  C0 01 00 08 */	lfs f0, 8(r1)
/* 804619A8  EC 23 00 32 */	fmuls f1, f3, f0
/* 804619AC  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 804619B0  EC 02 01 72 */	fmuls f0, f2, f5
/* 804619B4  EC 01 00 2A */	fadds f0, f1, f0
/* 804619B8  D0 01 00 08 */	stfs f0, 8(r1)
/* 804619BC  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 804619C0  EC 23 00 32 */	fmuls f1, f3, f0
/* 804619C4  EC 02 01 32 */	fmuls f0, f2, f4
/* 804619C8  EC 01 00 2A */	fadds f0, f1, f0
/* 804619CC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 804619D0  7F C3 F3 78 */	mr r3, r30
/* 804619D4  38 81 00 08 */	addi r4, r1, 8
/* 804619D8  A8 BE 04 DE */	lha r5, 0x4de(r30)
/* 804619DC  38 C0 00 00 */	li r6, 0
/* 804619E0  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 804619E4  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 804619E8  7D 89 03 A6 */	mtctr r12
/* 804619EC  4E 80 04 21 */	bctrl 
/* 804619F0  A8 7D 06 DC */	lha r3, 0x6dc(r29)
/* 804619F4  38 03 FF FF */	addi r0, r3, -1
/* 804619F8  B0 1D 06 DC */	sth r0, 0x6dc(r29)
/* 804619FC  48 00 00 2C */	b lbl_80461A28
lbl_80461A00:
/* 80461A00  7F C3 F3 78 */	mr r3, r30
/* 80461A04  38 81 00 14 */	addi r4, r1, 0x14
/* 80461A08  A8 BE 04 DE */	lha r5, 0x4de(r30)
/* 80461A0C  38 C0 00 00 */	li r6, 0
/* 80461A10  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 80461A14  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 80461A18  7D 89 03 A6 */	mtctr r12
/* 80461A1C  4E 80 04 21 */	bctrl 
/* 80461A20  38 60 00 01 */	li r3, 1
/* 80461A24  48 00 00 08 */	b lbl_80461A2C
lbl_80461A28:
/* 80461A28  38 60 00 00 */	li r3, 0
lbl_80461A2C:
/* 80461A2C  39 61 00 30 */	addi r11, r1, 0x30
/* 80461A30  4B F0 07 F4 */	b _restgpr_28
/* 80461A34  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80461A38  7C 08 03 A6 */	mtlr r0
/* 80461A3C  38 21 00 30 */	addi r1, r1, 0x30
/* 80461A40  4E 80 00 20 */	blr 
