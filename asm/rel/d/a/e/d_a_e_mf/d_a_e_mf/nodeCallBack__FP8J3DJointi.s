lbl_8070A8D8:
/* 8070A8D8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8070A8DC  7C 08 02 A6 */	mflr r0
/* 8070A8E0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8070A8E4  39 61 00 20 */	addi r11, r1, 0x20
/* 8070A8E8  4B C5 78 ED */	bl _savegpr_27
/* 8070A8EC  2C 04 00 00 */	cmpwi r4, 0
/* 8070A8F0  40 82 04 88 */	bne lbl_8070AD78
/* 8070A8F4  A3 E3 00 14 */	lhz r31, 0x14(r3)
/* 8070A8F8  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 8070A8FC  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 8070A900  83 C3 00 38 */	lwz r30, 0x38(r3)
/* 8070A904  83 9E 00 14 */	lwz r28, 0x14(r30)
/* 8070A908  28 1C 00 00 */	cmplwi r28, 0
/* 8070A90C  41 82 04 6C */	beq lbl_8070AD78
/* 8070A910  80 7E 00 84 */	lwz r3, 0x84(r30)
/* 8070A914  80 03 00 0C */	lwz r0, 0xc(r3)
/* 8070A918  1F BF 00 30 */	mulli r29, r31, 0x30
/* 8070A91C  7C 60 EA 14 */	add r3, r0, r29
/* 8070A920  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 8070A924  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 8070A928  80 84 00 00 */	lwz r4, 0(r4)
/* 8070A92C  4B C3 BB 85 */	bl PSMTXCopy
/* 8070A930  2C 1F 00 00 */	cmpwi r31, 0
/* 8070A934  41 82 02 8C */	beq lbl_8070ABC0
/* 8070A938  2C 1F 00 16 */	cmpwi r31, 0x16
/* 8070A93C  40 82 00 44 */	bne lbl_8070A980
/* 8070A940  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8070A944  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8070A948  80 63 00 00 */	lwz r3, 0(r3)
/* 8070A94C  A8 9C 08 12 */	lha r4, 0x812(r28)
/* 8070A950  4B 90 1A E5 */	bl mDoMtx_YrotM__FPA4_fs
/* 8070A954  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8070A958  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8070A95C  80 63 00 00 */	lwz r3, 0(r3)
/* 8070A960  A8 BC 07 D0 */	lha r5, 0x7d0(r28)
/* 8070A964  A8 9C 07 4E */	lha r4, 0x74e(r28)
/* 8070A968  A8 1C 08 10 */	lha r0, 0x810(r28)
/* 8070A96C  7C 04 00 50 */	subf r0, r4, r0
/* 8070A970  7C 05 02 14 */	add r0, r5, r0
/* 8070A974  7C 04 07 34 */	extsh r4, r0
/* 8070A978  4B 90 1B 55 */	bl mDoMtx_ZrotM__FPA4_fs
/* 8070A97C  48 00 02 44 */	b lbl_8070ABC0
lbl_8070A980:
/* 8070A980  2C 1F 00 17 */	cmpwi r31, 0x17
/* 8070A984  40 82 00 1C */	bne lbl_8070A9A0
/* 8070A988  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8070A98C  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8070A990  80 63 00 00 */	lwz r3, 0(r3)
/* 8070A994  A8 9C 07 DA */	lha r4, 0x7da(r28)
/* 8070A998  4B 90 1A 9D */	bl mDoMtx_YrotM__FPA4_fs
/* 8070A99C  48 00 02 24 */	b lbl_8070ABC0
lbl_8070A9A0:
/* 8070A9A0  2C 1F 00 18 */	cmpwi r31, 0x18
/* 8070A9A4  40 82 00 1C */	bne lbl_8070A9C0
/* 8070A9A8  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8070A9AC  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8070A9B0  80 63 00 00 */	lwz r3, 0(r3)
/* 8070A9B4  A8 9C 07 DC */	lha r4, 0x7dc(r28)
/* 8070A9B8  4B 90 1B 15 */	bl mDoMtx_ZrotM__FPA4_fs
/* 8070A9BC  48 00 02 04 */	b lbl_8070ABC0
lbl_8070A9C0:
/* 8070A9C0  2C 1F 00 1B */	cmpwi r31, 0x1b
/* 8070A9C4  40 82 00 1C */	bne lbl_8070A9E0
/* 8070A9C8  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8070A9CC  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8070A9D0  80 63 00 00 */	lwz r3, 0(r3)
/* 8070A9D4  A8 9C 07 DE */	lha r4, 0x7de(r28)
/* 8070A9D8  4B 90 1A 5D */	bl mDoMtx_YrotM__FPA4_fs
/* 8070A9DC  48 00 01 E4 */	b lbl_8070ABC0
lbl_8070A9E0:
/* 8070A9E0  2C 1F 00 1C */	cmpwi r31, 0x1c
/* 8070A9E4  40 82 00 1C */	bne lbl_8070AA00
/* 8070A9E8  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8070A9EC  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8070A9F0  80 63 00 00 */	lwz r3, 0(r3)
/* 8070A9F4  A8 9C 07 E0 */	lha r4, 0x7e0(r28)
/* 8070A9F8  4B 90 1A D5 */	bl mDoMtx_ZrotM__FPA4_fs
/* 8070A9FC  48 00 01 C4 */	b lbl_8070ABC0
lbl_8070AA00:
/* 8070AA00  2C 1F 00 02 */	cmpwi r31, 2
/* 8070AA04  40 82 00 58 */	bne lbl_8070AA5C
/* 8070AA08  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8070AA0C  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8070AA10  80 63 00 00 */	lwz r3, 0(r3)
/* 8070AA14  A8 1C 06 DA */	lha r0, 0x6da(r28)
/* 8070AA18  7C 00 0E 70 */	srawi r0, r0, 1
/* 8070AA1C  7C A0 01 94 */	addze r5, r0
/* 8070AA20  A8 9C 06 D6 */	lha r4, 0x6d6(r28)
/* 8070AA24  A8 1C 07 4A */	lha r0, 0x74a(r28)
/* 8070AA28  7C 04 00 50 */	subf r0, r4, r0
/* 8070AA2C  7C 05 02 14 */	add r0, r5, r0
/* 8070AA30  7C 04 07 34 */	extsh r4, r0
/* 8070AA34  4B 90 1A 01 */	bl mDoMtx_YrotM__FPA4_fs
/* 8070AA38  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8070AA3C  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8070AA40  80 63 00 00 */	lwz r3, 0(r3)
/* 8070AA44  A8 9C 07 48 */	lha r4, 0x748(r28)
/* 8070AA48  A8 1C 07 CE */	lha r0, 0x7ce(r28)
/* 8070AA4C  7C 04 02 14 */	add r0, r4, r0
/* 8070AA50  7C 04 07 34 */	extsh r4, r0
/* 8070AA54  4B 90 1A 79 */	bl mDoMtx_ZrotM__FPA4_fs
/* 8070AA58  48 00 01 68 */	b lbl_8070ABC0
lbl_8070AA5C:
/* 8070AA5C  2C 1F 00 03 */	cmpwi r31, 3
/* 8070AA60  41 82 00 0C */	beq lbl_8070AA6C
/* 8070AA64  2C 1F 00 04 */	cmpwi r31, 4
/* 8070AA68  40 82 00 58 */	bne lbl_8070AAC0
lbl_8070AA6C:
/* 8070AA6C  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8070AA70  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8070AA74  80 63 00 00 */	lwz r3, 0(r3)
/* 8070AA78  A8 BC 07 44 */	lha r5, 0x744(r28)
/* 8070AA7C  A8 9C 06 D6 */	lha r4, 0x6d6(r28)
/* 8070AA80  A8 1C 06 DA */	lha r0, 0x6da(r28)
/* 8070AA84  7C 04 00 50 */	subf r0, r4, r0
/* 8070AA88  7C 05 02 14 */	add r0, r5, r0
/* 8070AA8C  7C 04 07 34 */	extsh r4, r0
/* 8070AA90  4B 90 19 A5 */	bl mDoMtx_YrotM__FPA4_fs
/* 8070AA94  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8070AA98  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8070AA9C  80 63 00 00 */	lwz r3, 0(r3)
/* 8070AAA0  A8 BC 07 CC */	lha r5, 0x7cc(r28)
/* 8070AAA4  A8 9C 06 D8 */	lha r4, 0x6d8(r28)
/* 8070AAA8  A8 1C 07 42 */	lha r0, 0x742(r28)
/* 8070AAAC  7C 04 00 50 */	subf r0, r4, r0
/* 8070AAB0  7C 05 02 14 */	add r0, r5, r0
/* 8070AAB4  7C 04 07 34 */	extsh r4, r0
/* 8070AAB8  4B 90 1A 15 */	bl mDoMtx_ZrotM__FPA4_fs
/* 8070AABC  48 00 01 04 */	b lbl_8070ABC0
lbl_8070AAC0:
/* 8070AAC0  2C 1F 00 0B */	cmpwi r31, 0xb
/* 8070AAC4  40 82 00 28 */	bne lbl_8070AAEC
/* 8070AAC8  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8070AACC  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8070AAD0  80 63 00 00 */	lwz r3, 0(r3)
/* 8070AAD4  A8 9C 07 56 */	lha r4, 0x756(r28)
/* 8070AAD8  A8 1C 07 D2 */	lha r0, 0x7d2(r28)
/* 8070AADC  7C 04 02 14 */	add r0, r4, r0
/* 8070AAE0  7C 04 07 34 */	extsh r4, r0
/* 8070AAE4  4B 90 19 E9 */	bl mDoMtx_ZrotM__FPA4_fs
/* 8070AAE8  48 00 00 D8 */	b lbl_8070ABC0
lbl_8070AAEC:
/* 8070AAEC  2C 1F 00 0C */	cmpwi r31, 0xc
/* 8070AAF0  40 82 00 28 */	bne lbl_8070AB18
/* 8070AAF4  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8070AAF8  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8070AAFC  80 63 00 00 */	lwz r3, 0(r3)
/* 8070AB00  A8 9C 07 5C */	lha r4, 0x75c(r28)
/* 8070AB04  A8 1C 07 D4 */	lha r0, 0x7d4(r28)
/* 8070AB08  7C 04 02 14 */	add r0, r4, r0
/* 8070AB0C  7C 04 07 34 */	extsh r4, r0
/* 8070AB10  4B 90 19 BD */	bl mDoMtx_ZrotM__FPA4_fs
/* 8070AB14  48 00 00 AC */	b lbl_8070ABC0
lbl_8070AB18:
/* 8070AB18  2C 1F 00 11 */	cmpwi r31, 0x11
/* 8070AB1C  40 82 00 28 */	bne lbl_8070AB44
/* 8070AB20  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8070AB24  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8070AB28  80 63 00 00 */	lwz r3, 0(r3)
/* 8070AB2C  A8 9C 07 62 */	lha r4, 0x762(r28)
/* 8070AB30  A8 1C 07 D6 */	lha r0, 0x7d6(r28)
/* 8070AB34  7C 04 02 14 */	add r0, r4, r0
/* 8070AB38  7C 04 07 34 */	extsh r4, r0
/* 8070AB3C  4B 90 19 91 */	bl mDoMtx_ZrotM__FPA4_fs
/* 8070AB40  48 00 00 80 */	b lbl_8070ABC0
lbl_8070AB44:
/* 8070AB44  2C 1F 00 12 */	cmpwi r31, 0x12
/* 8070AB48  40 82 00 28 */	bne lbl_8070AB70
/* 8070AB4C  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8070AB50  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8070AB54  80 63 00 00 */	lwz r3, 0(r3)
/* 8070AB58  A8 9C 07 68 */	lha r4, 0x768(r28)
/* 8070AB5C  A8 1C 07 D8 */	lha r0, 0x7d8(r28)
/* 8070AB60  7C 04 02 14 */	add r0, r4, r0
/* 8070AB64  7C 04 07 34 */	extsh r4, r0
/* 8070AB68  4B 90 19 65 */	bl mDoMtx_ZrotM__FPA4_fs
/* 8070AB6C  48 00 00 54 */	b lbl_8070ABC0
lbl_8070AB70:
/* 8070AB70  2C 1F 00 1F */	cmpwi r31, 0x1f
/* 8070AB74  41 80 00 4C */	blt lbl_8070ABC0
/* 8070AB78  2C 1F 00 22 */	cmpwi r31, 0x22
/* 8070AB7C  41 81 00 44 */	bgt lbl_8070ABC0
/* 8070AB80  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8070AB84  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8070AB88  80 63 00 00 */	lwz r3, 0(r3)
/* 8070AB8C  1F 7F 00 06 */	mulli r27, r31, 6
/* 8070AB90  7C 9C DA 14 */	add r4, r28, r27
/* 8070AB94  A8 84 07 36 */	lha r4, 0x736(r4)
/* 8070AB98  A8 1C 08 06 */	lha r0, 0x806(r28)
/* 8070AB9C  7C 04 02 14 */	add r0, r4, r0
/* 8070ABA0  7C 04 07 34 */	extsh r4, r0
/* 8070ABA4  4B 90 18 91 */	bl mDoMtx_YrotM__FPA4_fs
/* 8070ABA8  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8070ABAC  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8070ABB0  80 63 00 00 */	lwz r3, 0(r3)
/* 8070ABB4  7C 9C DA 14 */	add r4, r28, r27
/* 8070ABB8  A8 84 07 34 */	lha r4, 0x734(r4)
/* 8070ABBC  4B 90 19 11 */	bl mDoMtx_ZrotM__FPA4_fs
lbl_8070ABC0:
/* 8070ABC0  A8 9C 07 EA */	lha r4, 0x7ea(r28)
/* 8070ABC4  7C 80 07 35 */	extsh. r0, r4
/* 8070ABC8  41 82 00 54 */	beq lbl_8070AC1C
/* 8070ABCC  57 E0 07 FF */	clrlwi. r0, r31, 0x1f
/* 8070ABD0  41 82 00 18 */	beq lbl_8070ABE8
/* 8070ABD4  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8070ABD8  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8070ABDC  80 63 00 00 */	lwz r3, 0(r3)
/* 8070ABE0  4B 90 18 55 */	bl mDoMtx_YrotM__FPA4_fs
/* 8070ABE4  48 00 00 38 */	b lbl_8070AC1C
lbl_8070ABE8:
/* 8070ABE8  57 E0 07 BD */	rlwinm. r0, r31, 0, 0x1e, 0x1e
/* 8070ABEC  41 82 00 18 */	beq lbl_8070AC04
/* 8070ABF0  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8070ABF4  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8070ABF8  80 63 00 00 */	lwz r3, 0(r3)
/* 8070ABFC  4B 90 17 A1 */	bl mDoMtx_XrotM__FPA4_fs
/* 8070AC00  48 00 00 1C */	b lbl_8070AC1C
lbl_8070AC04:
/* 8070AC04  57 E0 07 7B */	rlwinm. r0, r31, 0, 0x1d, 0x1d
/* 8070AC08  41 82 00 14 */	beq lbl_8070AC1C
/* 8070AC0C  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8070AC10  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8070AC14  80 63 00 00 */	lwz r3, 0(r3)
/* 8070AC18  4B 90 18 B5 */	bl mDoMtx_ZrotM__FPA4_fs
lbl_8070AC1C:
/* 8070AC1C  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8070AC20  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8070AC24  80 63 00 00 */	lwz r3, 0(r3)
/* 8070AC28  80 9E 00 84 */	lwz r4, 0x84(r30)
/* 8070AC2C  80 04 00 0C */	lwz r0, 0xc(r4)
/* 8070AC30  7C 80 EA 14 */	add r4, r0, r29
/* 8070AC34  4B C3 B8 7D */	bl PSMTXCopy
/* 8070AC38  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8070AC3C  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8070AC40  80 63 00 00 */	lwz r3, 0(r3)
/* 8070AC44  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha /* 0x80434BE4@ha */
/* 8070AC48  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l /* 0x80434BE4@l */
/* 8070AC4C  4B C3 B8 65 */	bl PSMTXCopy
/* 8070AC50  2C 1F 00 00 */	cmpwi r31, 0
/* 8070AC54  40 82 00 90 */	bne lbl_8070ACE4
/* 8070AC58  80 7E 00 84 */	lwz r3, 0x84(r30)
/* 8070AC5C  80 03 00 0C */	lwz r0, 0xc(r3)
/* 8070AC60  7C 60 EA 14 */	add r3, r0, r29
/* 8070AC64  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 8070AC68  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 8070AC6C  80 84 00 00 */	lwz r4, 0(r4)
/* 8070AC70  4B C3 B8 41 */	bl PSMTXCopy
/* 8070AC74  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8070AC78  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8070AC7C  80 63 00 00 */	lwz r3, 0(r3)
/* 8070AC80  38 80 00 00 */	li r4, 0
/* 8070AC84  4B 90 17 B1 */	bl mDoMtx_YrotM__FPA4_fs
/* 8070AC88  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8070AC8C  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8070AC90  80 63 00 00 */	lwz r3, 0(r3)
/* 8070AC94  38 80 00 00 */	li r4, 0
/* 8070AC98  4B 90 17 05 */	bl mDoMtx_XrotM__FPA4_fs
/* 8070AC9C  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8070ACA0  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8070ACA4  80 63 00 00 */	lwz r3, 0(r3)
/* 8070ACA8  38 80 00 00 */	li r4, 0
/* 8070ACAC  4B 90 18 21 */	bl mDoMtx_ZrotM__FPA4_fs
/* 8070ACB0  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8070ACB4  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8070ACB8  80 63 00 00 */	lwz r3, 0(r3)
/* 8070ACBC  80 9E 00 84 */	lwz r4, 0x84(r30)
/* 8070ACC0  80 04 00 0C */	lwz r0, 0xc(r4)
/* 8070ACC4  7C 80 EA 14 */	add r4, r0, r29
/* 8070ACC8  4B C3 B7 E9 */	bl PSMTXCopy
/* 8070ACCC  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8070ACD0  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8070ACD4  80 63 00 00 */	lwz r3, 0(r3)
/* 8070ACD8  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha /* 0x80434BE4@ha */
/* 8070ACDC  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l /* 0x80434BE4@l */
/* 8070ACE0  4B C3 B7 D1 */	bl PSMTXCopy
lbl_8070ACE4:
/* 8070ACE4  2C 1F 00 00 */	cmpwi r31, 0
/* 8070ACE8  40 82 00 90 */	bne lbl_8070AD78
/* 8070ACEC  80 7E 00 84 */	lwz r3, 0x84(r30)
/* 8070ACF0  80 03 00 0C */	lwz r0, 0xc(r3)
/* 8070ACF4  7C 60 EA 14 */	add r3, r0, r29
/* 8070ACF8  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 8070ACFC  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 8070AD00  80 84 00 00 */	lwz r4, 0(r4)
/* 8070AD04  4B C3 B7 AD */	bl PSMTXCopy
/* 8070AD08  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8070AD0C  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8070AD10  80 63 00 00 */	lwz r3, 0(r3)
/* 8070AD14  38 80 00 00 */	li r4, 0
/* 8070AD18  4B 90 17 1D */	bl mDoMtx_YrotM__FPA4_fs
/* 8070AD1C  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8070AD20  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8070AD24  80 63 00 00 */	lwz r3, 0(r3)
/* 8070AD28  38 80 00 00 */	li r4, 0
/* 8070AD2C  4B 90 16 71 */	bl mDoMtx_XrotM__FPA4_fs
/* 8070AD30  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8070AD34  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8070AD38  80 63 00 00 */	lwz r3, 0(r3)
/* 8070AD3C  38 80 00 00 */	li r4, 0
/* 8070AD40  4B 90 17 8D */	bl mDoMtx_ZrotM__FPA4_fs
/* 8070AD44  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8070AD48  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8070AD4C  80 63 00 00 */	lwz r3, 0(r3)
/* 8070AD50  80 9E 00 84 */	lwz r4, 0x84(r30)
/* 8070AD54  80 04 00 0C */	lwz r0, 0xc(r4)
/* 8070AD58  7C 80 EA 14 */	add r4, r0, r29
/* 8070AD5C  4B C3 B7 55 */	bl PSMTXCopy
/* 8070AD60  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8070AD64  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8070AD68  80 63 00 00 */	lwz r3, 0(r3)
/* 8070AD6C  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha /* 0x80434BE4@ha */
/* 8070AD70  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l /* 0x80434BE4@l */
/* 8070AD74  4B C3 B7 3D */	bl PSMTXCopy
lbl_8070AD78:
/* 8070AD78  38 60 00 01 */	li r3, 1
/* 8070AD7C  39 61 00 20 */	addi r11, r1, 0x20
/* 8070AD80  4B C5 74 A1 */	bl _restgpr_27
/* 8070AD84  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8070AD88  7C 08 03 A6 */	mtlr r0
/* 8070AD8C  38 21 00 20 */	addi r1, r1, 0x20
/* 8070AD90  4E 80 00 20 */	blr 
