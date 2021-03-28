lbl_8094BE60:
/* 8094BE60  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8094BE64  7C 08 02 A6 */	mflr r0
/* 8094BE68  90 01 00 24 */	stw r0, 0x24(r1)
/* 8094BE6C  39 61 00 20 */	addi r11, r1, 0x20
/* 8094BE70  4B A1 63 68 */	b _savegpr_28
/* 8094BE74  2C 04 00 00 */	cmpwi r4, 0
/* 8094BE78  40 82 02 7C */	bne lbl_8094C0F4
/* 8094BE7C  A3 E3 00 14 */	lhz r31, 0x14(r3)
/* 8094BE80  3C 60 80 43 */	lis r3, j3dSys@ha
/* 8094BE84  38 63 4A C8 */	addi r3, r3, j3dSys@l
/* 8094BE88  83 C3 00 38 */	lwz r30, 0x38(r3)
/* 8094BE8C  83 9E 00 14 */	lwz r28, 0x14(r30)
/* 8094BE90  28 1C 00 00 */	cmplwi r28, 0
/* 8094BE94  41 82 02 60 */	beq lbl_8094C0F4
/* 8094BE98  80 7E 00 84 */	lwz r3, 0x84(r30)
/* 8094BE9C  80 03 00 0C */	lwz r0, 0xc(r3)
/* 8094BEA0  1F BF 00 30 */	mulli r29, r31, 0x30
/* 8094BEA4  7C 60 EA 14 */	add r3, r0, r29
/* 8094BEA8  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 8094BEAC  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 8094BEB0  80 84 00 00 */	lwz r4, 0(r4)
/* 8094BEB4  4B 9F A5 FC */	b PSMTXCopy
/* 8094BEB8  2C 1F 00 06 */	cmpwi r31, 6
/* 8094BEBC  40 82 00 30 */	bne lbl_8094BEEC
/* 8094BEC0  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8094BEC4  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8094BEC8  80 63 00 00 */	lwz r3, 0(r3)
/* 8094BECC  A8 9C 06 1C */	lha r4, 0x61c(r28)
/* 8094BED0  4B 6C 05 64 */	b mDoMtx_YrotM__FPA4_fs
/* 8094BED4  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8094BED8  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8094BEDC  80 63 00 00 */	lwz r3, 0(r3)
/* 8094BEE0  A8 9C 06 1A */	lha r4, 0x61a(r28)
/* 8094BEE4  4B 6C 04 B8 */	b mDoMtx_XrotM__FPA4_fs
/* 8094BEE8  48 00 00 B0 */	b lbl_8094BF98
lbl_8094BEEC:
/* 8094BEEC  2C 1F 00 05 */	cmpwi r31, 5
/* 8094BEF0  40 82 00 3C */	bne lbl_8094BF2C
/* 8094BEF4  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8094BEF8  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8094BEFC  80 63 00 00 */	lwz r3, 0(r3)
/* 8094BF00  A8 1C 06 1A */	lha r0, 0x61a(r28)
/* 8094BF04  7C 00 0E 70 */	srawi r0, r0, 1
/* 8094BF08  7C 00 01 94 */	addze r0, r0
/* 8094BF0C  7C 04 07 34 */	extsh r4, r0
/* 8094BF10  4B 6C 04 8C */	b mDoMtx_XrotM__FPA4_fs
/* 8094BF14  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8094BF18  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8094BF1C  80 63 00 00 */	lwz r3, 0(r3)
/* 8094BF20  A8 9C 06 18 */	lha r4, 0x618(r28)
/* 8094BF24  4B 6C 05 A8 */	b mDoMtx_ZrotM__FPA4_fs
/* 8094BF28  48 00 00 70 */	b lbl_8094BF98
lbl_8094BF2C:
/* 8094BF2C  2C 1F 00 07 */	cmpwi r31, 7
/* 8094BF30  40 82 00 1C */	bne lbl_8094BF4C
/* 8094BF34  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8094BF38  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8094BF3C  80 63 00 00 */	lwz r3, 0(r3)
/* 8094BF40  A8 9C 06 26 */	lha r4, 0x626(r28)
/* 8094BF44  4B 6C 04 F0 */	b mDoMtx_YrotM__FPA4_fs
/* 8094BF48  48 00 00 50 */	b lbl_8094BF98
lbl_8094BF4C:
/* 8094BF4C  2C 1F 00 08 */	cmpwi r31, 8
/* 8094BF50  40 82 00 1C */	bne lbl_8094BF6C
/* 8094BF54  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8094BF58  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8094BF5C  80 63 00 00 */	lwz r3, 0(r3)
/* 8094BF60  A8 9C 06 24 */	lha r4, 0x624(r28)
/* 8094BF64  4B 6C 04 D0 */	b mDoMtx_YrotM__FPA4_fs
/* 8094BF68  48 00 00 30 */	b lbl_8094BF98
lbl_8094BF6C:
/* 8094BF6C  2C 1F 00 01 */	cmpwi r31, 1
/* 8094BF70  41 80 00 28 */	blt lbl_8094BF98
/* 8094BF74  2C 1F 00 04 */	cmpwi r31, 4
/* 8094BF78  41 81 00 20 */	bgt lbl_8094BF98
/* 8094BF7C  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8094BF80  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8094BF84  80 63 00 00 */	lwz r3, 0(r3)
/* 8094BF88  57 E0 08 3C */	slwi r0, r31, 1
/* 8094BF8C  7C 9C 02 14 */	add r4, r28, r0
/* 8094BF90  A8 84 09 EC */	lha r4, 0x9ec(r4)
/* 8094BF94  4B 6C 05 38 */	b mDoMtx_ZrotM__FPA4_fs
lbl_8094BF98:
/* 8094BF98  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8094BF9C  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8094BFA0  80 63 00 00 */	lwz r3, 0(r3)
/* 8094BFA4  80 9E 00 84 */	lwz r4, 0x84(r30)
/* 8094BFA8  80 04 00 0C */	lwz r0, 0xc(r4)
/* 8094BFAC  7C 80 EA 14 */	add r4, r0, r29
/* 8094BFB0  4B 9F A5 00 */	b PSMTXCopy
/* 8094BFB4  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8094BFB8  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8094BFBC  80 63 00 00 */	lwz r3, 0(r3)
/* 8094BFC0  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha
/* 8094BFC4  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l
/* 8094BFC8  4B 9F A4 E8 */	b PSMTXCopy
/* 8094BFCC  2C 1F 00 00 */	cmpwi r31, 0
/* 8094BFD0  40 82 00 90 */	bne lbl_8094C060
/* 8094BFD4  80 7E 00 84 */	lwz r3, 0x84(r30)
/* 8094BFD8  80 03 00 0C */	lwz r0, 0xc(r3)
/* 8094BFDC  7C 60 EA 14 */	add r3, r0, r29
/* 8094BFE0  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 8094BFE4  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 8094BFE8  80 84 00 00 */	lwz r4, 0(r4)
/* 8094BFEC  4B 9F A4 C4 */	b PSMTXCopy
/* 8094BFF0  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8094BFF4  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8094BFF8  80 63 00 00 */	lwz r3, 0(r3)
/* 8094BFFC  38 80 00 00 */	li r4, 0
/* 8094C000  4B 6C 04 34 */	b mDoMtx_YrotM__FPA4_fs
/* 8094C004  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8094C008  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8094C00C  80 63 00 00 */	lwz r3, 0(r3)
/* 8094C010  38 80 00 00 */	li r4, 0
/* 8094C014  4B 6C 03 88 */	b mDoMtx_XrotM__FPA4_fs
/* 8094C018  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8094C01C  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8094C020  80 63 00 00 */	lwz r3, 0(r3)
/* 8094C024  38 80 00 00 */	li r4, 0
/* 8094C028  4B 6C 04 A4 */	b mDoMtx_ZrotM__FPA4_fs
/* 8094C02C  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8094C030  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8094C034  80 63 00 00 */	lwz r3, 0(r3)
/* 8094C038  80 9E 00 84 */	lwz r4, 0x84(r30)
/* 8094C03C  80 04 00 0C */	lwz r0, 0xc(r4)
/* 8094C040  7C 80 EA 14 */	add r4, r0, r29
/* 8094C044  4B 9F A4 6C */	b PSMTXCopy
/* 8094C048  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8094C04C  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8094C050  80 63 00 00 */	lwz r3, 0(r3)
/* 8094C054  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha
/* 8094C058  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l
/* 8094C05C  4B 9F A4 54 */	b PSMTXCopy
lbl_8094C060:
/* 8094C060  2C 1F 00 00 */	cmpwi r31, 0
/* 8094C064  40 82 00 90 */	bne lbl_8094C0F4
/* 8094C068  80 7E 00 84 */	lwz r3, 0x84(r30)
/* 8094C06C  80 03 00 0C */	lwz r0, 0xc(r3)
/* 8094C070  7C 60 EA 14 */	add r3, r0, r29
/* 8094C074  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 8094C078  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 8094C07C  80 84 00 00 */	lwz r4, 0(r4)
/* 8094C080  4B 9F A4 30 */	b PSMTXCopy
/* 8094C084  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8094C088  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8094C08C  80 63 00 00 */	lwz r3, 0(r3)
/* 8094C090  38 80 00 00 */	li r4, 0
/* 8094C094  4B 6C 03 A0 */	b mDoMtx_YrotM__FPA4_fs
/* 8094C098  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8094C09C  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8094C0A0  80 63 00 00 */	lwz r3, 0(r3)
/* 8094C0A4  38 80 00 00 */	li r4, 0
/* 8094C0A8  4B 6C 02 F4 */	b mDoMtx_XrotM__FPA4_fs
/* 8094C0AC  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8094C0B0  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8094C0B4  80 63 00 00 */	lwz r3, 0(r3)
/* 8094C0B8  38 80 00 00 */	li r4, 0
/* 8094C0BC  4B 6C 04 10 */	b mDoMtx_ZrotM__FPA4_fs
/* 8094C0C0  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8094C0C4  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8094C0C8  80 63 00 00 */	lwz r3, 0(r3)
/* 8094C0CC  80 9E 00 84 */	lwz r4, 0x84(r30)
/* 8094C0D0  80 04 00 0C */	lwz r0, 0xc(r4)
/* 8094C0D4  7C 80 EA 14 */	add r4, r0, r29
/* 8094C0D8  4B 9F A3 D8 */	b PSMTXCopy
/* 8094C0DC  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8094C0E0  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8094C0E4  80 63 00 00 */	lwz r3, 0(r3)
/* 8094C0E8  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha
/* 8094C0EC  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l
/* 8094C0F0  4B 9F A3 C0 */	b PSMTXCopy
lbl_8094C0F4:
/* 8094C0F4  38 60 00 01 */	li r3, 1
/* 8094C0F8  39 61 00 20 */	addi r11, r1, 0x20
/* 8094C0FC  4B A1 61 28 */	b _restgpr_28
/* 8094C100  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8094C104  7C 08 03 A6 */	mtlr r0
/* 8094C108  38 21 00 20 */	addi r1, r1, 0x20
/* 8094C10C  4E 80 00 20 */	blr 
