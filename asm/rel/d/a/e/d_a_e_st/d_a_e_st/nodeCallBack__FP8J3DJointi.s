lbl_8079DEF8:
/* 8079DEF8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8079DEFC  7C 08 02 A6 */	mflr r0
/* 8079DF00  90 01 00 24 */	stw r0, 0x24(r1)
/* 8079DF04  39 61 00 20 */	addi r11, r1, 0x20
/* 8079DF08  4B BC 42 D0 */	b _savegpr_28
/* 8079DF0C  2C 04 00 00 */	cmpwi r4, 0
/* 8079DF10  40 82 02 78 */	bne lbl_8079E188
/* 8079DF14  A3 E3 00 14 */	lhz r31, 0x14(r3)
/* 8079DF18  3C 60 80 43 */	lis r3, j3dSys@ha
/* 8079DF1C  38 63 4A C8 */	addi r3, r3, j3dSys@l
/* 8079DF20  83 C3 00 38 */	lwz r30, 0x38(r3)
/* 8079DF24  83 9E 00 14 */	lwz r28, 0x14(r30)
/* 8079DF28  28 1C 00 00 */	cmplwi r28, 0
/* 8079DF2C  41 82 02 5C */	beq lbl_8079E188
/* 8079DF30  80 7E 00 84 */	lwz r3, 0x84(r30)
/* 8079DF34  80 03 00 0C */	lwz r0, 0xc(r3)
/* 8079DF38  1F BF 00 30 */	mulli r29, r31, 0x30
/* 8079DF3C  7C 60 EA 14 */	add r3, r0, r29
/* 8079DF40  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 8079DF44  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 8079DF48  80 84 00 00 */	lwz r4, 0(r4)
/* 8079DF4C  4B BA 85 64 */	b PSMTXCopy
/* 8079DF50  2C 1F 00 02 */	cmpwi r31, 2
/* 8079DF54  41 80 00 2C */	blt lbl_8079DF80
/* 8079DF58  2C 1F 00 04 */	cmpwi r31, 4
/* 8079DF5C  41 81 00 24 */	bgt lbl_8079DF80
/* 8079DF60  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8079DF64  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8079DF68  80 63 00 00 */	lwz r3, 0(r3)
/* 8079DF6C  57 E0 08 3C */	slwi r0, r31, 1
/* 8079DF70  7C 9C 02 14 */	add r4, r28, r0
/* 8079DF74  A8 84 0F 94 */	lha r4, 0xf94(r4)
/* 8079DF78  4B 86 E5 54 */	b mDoMtx_ZrotM__FPA4_fs
/* 8079DF7C  48 00 01 50 */	b lbl_8079E0CC
lbl_8079DF80:
/* 8079DF80  2C 1F 00 05 */	cmpwi r31, 5
/* 8079DF84  41 80 00 2C */	blt lbl_8079DFB0
/* 8079DF88  2C 1F 00 07 */	cmpwi r31, 7
/* 8079DF8C  41 81 00 24 */	bgt lbl_8079DFB0
/* 8079DF90  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8079DF94  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8079DF98  80 63 00 00 */	lwz r3, 0(r3)
/* 8079DF9C  57 E0 08 3C */	slwi r0, r31, 1
/* 8079DFA0  7C 9C 02 14 */	add r4, r28, r0
/* 8079DFA4  A8 84 0F A6 */	lha r4, 0xfa6(r4)
/* 8079DFA8  4B 86 E5 24 */	b mDoMtx_ZrotM__FPA4_fs
/* 8079DFAC  48 00 01 20 */	b lbl_8079E0CC
lbl_8079DFB0:
/* 8079DFB0  2C 1F 00 08 */	cmpwi r31, 8
/* 8079DFB4  41 80 00 2C */	blt lbl_8079DFE0
/* 8079DFB8  2C 1F 00 0A */	cmpwi r31, 0xa
/* 8079DFBC  41 81 00 24 */	bgt lbl_8079DFE0
/* 8079DFC0  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8079DFC4  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8079DFC8  80 63 00 00 */	lwz r3, 0(r3)
/* 8079DFCC  57 E0 08 3C */	slwi r0, r31, 1
/* 8079DFD0  7C 9C 02 14 */	add r4, r28, r0
/* 8079DFD4  A8 84 0F B8 */	lha r4, 0xfb8(r4)
/* 8079DFD8  4B 86 E4 F4 */	b mDoMtx_ZrotM__FPA4_fs
/* 8079DFDC  48 00 00 F0 */	b lbl_8079E0CC
lbl_8079DFE0:
/* 8079DFE0  2C 1F 00 0B */	cmpwi r31, 0xb
/* 8079DFE4  41 80 00 2C */	blt lbl_8079E010
/* 8079DFE8  2C 1F 00 0D */	cmpwi r31, 0xd
/* 8079DFEC  41 81 00 24 */	bgt lbl_8079E010
/* 8079DFF0  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8079DFF4  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8079DFF8  80 63 00 00 */	lwz r3, 0(r3)
/* 8079DFFC  57 E0 08 3C */	slwi r0, r31, 1
/* 8079E000  7C 9C 02 14 */	add r4, r28, r0
/* 8079E004  A8 84 0F CA */	lha r4, 0xfca(r4)
/* 8079E008  4B 86 E4 C4 */	b mDoMtx_ZrotM__FPA4_fs
/* 8079E00C  48 00 00 C0 */	b lbl_8079E0CC
lbl_8079E010:
/* 8079E010  2C 1F 00 0E */	cmpwi r31, 0xe
/* 8079E014  41 80 00 2C */	blt lbl_8079E040
/* 8079E018  2C 1F 00 10 */	cmpwi r31, 0x10
/* 8079E01C  41 81 00 24 */	bgt lbl_8079E040
/* 8079E020  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8079E024  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8079E028  80 63 00 00 */	lwz r3, 0(r3)
/* 8079E02C  57 E0 08 3C */	slwi r0, r31, 1
/* 8079E030  7C 9C 02 14 */	add r4, r28, r0
/* 8079E034  A8 84 0F DC */	lha r4, 0xfdc(r4)
/* 8079E038  4B 86 E4 94 */	b mDoMtx_ZrotM__FPA4_fs
/* 8079E03C  48 00 00 90 */	b lbl_8079E0CC
lbl_8079E040:
/* 8079E040  2C 1F 00 11 */	cmpwi r31, 0x11
/* 8079E044  41 80 00 2C */	blt lbl_8079E070
/* 8079E048  2C 1F 00 13 */	cmpwi r31, 0x13
/* 8079E04C  41 81 00 24 */	bgt lbl_8079E070
/* 8079E050  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8079E054  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8079E058  80 63 00 00 */	lwz r3, 0(r3)
/* 8079E05C  57 E0 08 3C */	slwi r0, r31, 1
/* 8079E060  7C 9C 02 14 */	add r4, r28, r0
/* 8079E064  A8 84 0F EE */	lha r4, 0xfee(r4)
/* 8079E068  4B 86 E4 64 */	b mDoMtx_ZrotM__FPA4_fs
/* 8079E06C  48 00 00 60 */	b lbl_8079E0CC
lbl_8079E070:
/* 8079E070  2C 1F 00 14 */	cmpwi r31, 0x14
/* 8079E074  41 80 00 2C */	blt lbl_8079E0A0
/* 8079E078  2C 1F 00 16 */	cmpwi r31, 0x16
/* 8079E07C  41 81 00 24 */	bgt lbl_8079E0A0
/* 8079E080  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8079E084  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8079E088  80 63 00 00 */	lwz r3, 0(r3)
/* 8079E08C  57 E0 08 3C */	slwi r0, r31, 1
/* 8079E090  7C 9C 02 14 */	add r4, r28, r0
/* 8079E094  A8 84 10 00 */	lha r4, 0x1000(r4)
/* 8079E098  4B 86 E4 34 */	b mDoMtx_ZrotM__FPA4_fs
/* 8079E09C  48 00 00 30 */	b lbl_8079E0CC
lbl_8079E0A0:
/* 8079E0A0  2C 1F 00 17 */	cmpwi r31, 0x17
/* 8079E0A4  41 80 00 28 */	blt lbl_8079E0CC
/* 8079E0A8  2C 1F 00 19 */	cmpwi r31, 0x19
/* 8079E0AC  41 81 00 20 */	bgt lbl_8079E0CC
/* 8079E0B0  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8079E0B4  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8079E0B8  80 63 00 00 */	lwz r3, 0(r3)
/* 8079E0BC  57 E0 08 3C */	slwi r0, r31, 1
/* 8079E0C0  7C 9C 02 14 */	add r4, r28, r0
/* 8079E0C4  A8 84 10 12 */	lha r4, 0x1012(r4)
/* 8079E0C8  4B 86 E4 04 */	b mDoMtx_ZrotM__FPA4_fs
lbl_8079E0CC:
/* 8079E0CC  2C 1F 00 00 */	cmpwi r31, 0
/* 8079E0D0  40 82 00 44 */	bne lbl_8079E114
/* 8079E0D4  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8079E0D8  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8079E0DC  80 63 00 00 */	lwz r3, 0(r3)
/* 8079E0E0  38 80 00 00 */	li r4, 0
/* 8079E0E4  4B 86 E2 B8 */	b mDoMtx_XrotM__FPA4_fs
/* 8079E0E8  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8079E0EC  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8079E0F0  80 63 00 00 */	lwz r3, 0(r3)
/* 8079E0F4  38 80 00 00 */	li r4, 0
/* 8079E0F8  4B 86 E2 A4 */	b mDoMtx_XrotM__FPA4_fs
/* 8079E0FC  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8079E100  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8079E104  80 63 00 00 */	lwz r3, 0(r3)
/* 8079E108  38 80 00 00 */	li r4, 0
/* 8079E10C  4B 86 E3 C0 */	b mDoMtx_ZrotM__FPA4_fs
/* 8079E110  48 00 00 44 */	b lbl_8079E154
lbl_8079E114:
/* 8079E114  40 82 00 40 */	bne lbl_8079E154
/* 8079E118  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8079E11C  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8079E120  80 63 00 00 */	lwz r3, 0(r3)
/* 8079E124  38 80 00 00 */	li r4, 0
/* 8079E128  4B 86 E2 74 */	b mDoMtx_XrotM__FPA4_fs
/* 8079E12C  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8079E130  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8079E134  80 63 00 00 */	lwz r3, 0(r3)
/* 8079E138  38 80 00 00 */	li r4, 0
/* 8079E13C  4B 86 E2 60 */	b mDoMtx_XrotM__FPA4_fs
/* 8079E140  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8079E144  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8079E148  80 63 00 00 */	lwz r3, 0(r3)
/* 8079E14C  38 80 00 00 */	li r4, 0
/* 8079E150  4B 86 E3 7C */	b mDoMtx_ZrotM__FPA4_fs
lbl_8079E154:
/* 8079E154  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8079E158  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8079E15C  80 63 00 00 */	lwz r3, 0(r3)
/* 8079E160  80 9E 00 84 */	lwz r4, 0x84(r30)
/* 8079E164  80 04 00 0C */	lwz r0, 0xc(r4)
/* 8079E168  7C 80 EA 14 */	add r4, r0, r29
/* 8079E16C  4B BA 83 44 */	b PSMTXCopy
/* 8079E170  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8079E174  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8079E178  80 63 00 00 */	lwz r3, 0(r3)
/* 8079E17C  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha
/* 8079E180  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l
/* 8079E184  4B BA 83 2C */	b PSMTXCopy
lbl_8079E188:
/* 8079E188  38 60 00 01 */	li r3, 1
/* 8079E18C  39 61 00 20 */	addi r11, r1, 0x20
/* 8079E190  4B BC 40 94 */	b _restgpr_28
/* 8079E194  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8079E198  7C 08 03 A6 */	mtlr r0
/* 8079E19C  38 21 00 20 */	addi r1, r1, 0x20
/* 8079E1A0  4E 80 00 20 */	blr 
