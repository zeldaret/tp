lbl_80A3BE64:
/* 80A3BE64  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80A3BE68  7C 08 02 A6 */	mflr r0
/* 80A3BE6C  90 01 00 44 */	stw r0, 0x44(r1)
/* 80A3BE70  3C 60 80 A4 */	lis r3, cNullVec__6Z2Calc@ha
/* 80A3BE74  38 83 0D 34 */	addi r4, r3, cNullVec__6Z2Calc@l
/* 80A3BE78  38 C1 00 04 */	addi r6, r1, 4
/* 80A3BE7C  3C 60 80 A4 */	lis r3, mCcDObjData__10daNpc_Kn_c@ha
/* 80A3BE80  38 63 08 C8 */	addi r3, r3, mCcDObjData__10daNpc_Kn_c@l
/* 80A3BE84  38 A3 FF FC */	addi r5, r3, -4
/* 80A3BE88  38 00 00 06 */	li r0, 6
/* 80A3BE8C  7C 09 03 A6 */	mtctr r0
lbl_80A3BE90:
/* 80A3BE90  80 65 00 04 */	lwz r3, 4(r5)
/* 80A3BE94  84 05 00 08 */	lwzu r0, 8(r5)
/* 80A3BE98  90 66 00 04 */	stw r3, 4(r6)
/* 80A3BE9C  94 06 00 08 */	stwu r0, 8(r6)
/* 80A3BEA0  42 00 FF F0 */	bdnz lbl_80A3BE90
/* 80A3BEA4  38 C4 00 1C */	addi r6, r4, 0x1c
/* 80A3BEA8  38 A1 00 04 */	addi r5, r1, 4
/* 80A3BEAC  38 00 00 06 */	li r0, 6
/* 80A3BEB0  7C 09 03 A6 */	mtctr r0
lbl_80A3BEB4:
/* 80A3BEB4  80 65 00 04 */	lwz r3, 4(r5)
/* 80A3BEB8  84 05 00 08 */	lwzu r0, 8(r5)
/* 80A3BEBC  90 66 00 04 */	stw r3, 4(r6)
/* 80A3BEC0  94 06 00 08 */	stwu r0, 8(r6)
/* 80A3BEC4  42 00 FF F0 */	bdnz lbl_80A3BEB4
/* 80A3BEC8  38 C4 00 60 */	addi r6, r4, 0x60
/* 80A3BECC  38 A1 00 04 */	addi r5, r1, 4
/* 80A3BED0  38 00 00 06 */	li r0, 6
/* 80A3BED4  7C 09 03 A6 */	mtctr r0
lbl_80A3BED8:
/* 80A3BED8  80 65 00 04 */	lwz r3, 4(r5)
/* 80A3BEDC  84 05 00 08 */	lwzu r0, 8(r5)
/* 80A3BEE0  90 66 00 04 */	stw r3, 4(r6)
/* 80A3BEE4  94 06 00 08 */	stwu r0, 8(r6)
/* 80A3BEE8  42 00 FF F0 */	bdnz lbl_80A3BED8
/* 80A3BEEC  3C 60 80 3A */	lis r3, __ptmf_null@ha
/* 80A3BEF0  38 A3 21 80 */	addi r5, r3, __ptmf_null@l
/* 80A3BEF4  80 65 00 00 */	lwz r3, 0(r5)
/* 80A3BEF8  80 05 00 04 */	lwz r0, 4(r5)
/* 80A3BEFC  90 64 09 98 */	stw r3, 0x998(r4)
/* 80A3BF00  90 04 09 9C */	stw r0, 0x99c(r4)
/* 80A3BF04  80 05 00 08 */	lwz r0, 8(r5)
/* 80A3BF08  90 04 09 A0 */	stw r0, 0x9a0(r4)
/* 80A3BF0C  38 64 09 98 */	addi r3, r4, 0x998
/* 80A3BF10  80 A4 08 A8 */	lwz r5, 0x8a8(r4)
/* 80A3BF14  80 04 08 AC */	lwz r0, 0x8ac(r4)
/* 80A3BF18  90 A3 00 0C */	stw r5, 0xc(r3)
/* 80A3BF1C  90 03 00 10 */	stw r0, 0x10(r3)
/* 80A3BF20  80 04 08 B0 */	lwz r0, 0x8b0(r4)
/* 80A3BF24  90 03 00 14 */	stw r0, 0x14(r3)
/* 80A3BF28  80 A4 08 B4 */	lwz r5, 0x8b4(r4)
/* 80A3BF2C  80 04 08 B8 */	lwz r0, 0x8b8(r4)
/* 80A3BF30  90 A3 00 18 */	stw r5, 0x18(r3)
/* 80A3BF34  90 03 00 1C */	stw r0, 0x1c(r3)
/* 80A3BF38  80 04 08 BC */	lwz r0, 0x8bc(r4)
/* 80A3BF3C  90 03 00 20 */	stw r0, 0x20(r3)
/* 80A3BF40  80 A4 08 C0 */	lwz r5, 0x8c0(r4)
/* 80A3BF44  80 04 08 C4 */	lwz r0, 0x8c4(r4)
/* 80A3BF48  90 A3 00 24 */	stw r5, 0x24(r3)
/* 80A3BF4C  90 03 00 28 */	stw r0, 0x28(r3)
/* 80A3BF50  80 04 08 C8 */	lwz r0, 0x8c8(r4)
/* 80A3BF54  90 03 00 2C */	stw r0, 0x2c(r3)
/* 80A3BF58  80 A4 08 CC */	lwz r5, 0x8cc(r4)
/* 80A3BF5C  80 04 08 D0 */	lwz r0, 0x8d0(r4)
/* 80A3BF60  90 A3 00 30 */	stw r5, 0x30(r3)
/* 80A3BF64  90 03 00 34 */	stw r0, 0x34(r3)
/* 80A3BF68  80 04 08 D4 */	lwz r0, 0x8d4(r4)
/* 80A3BF6C  90 03 00 38 */	stw r0, 0x38(r3)
/* 80A3BF70  80 A4 08 D8 */	lwz r5, 0x8d8(r4)
/* 80A3BF74  80 04 08 DC */	lwz r0, 0x8dc(r4)
/* 80A3BF78  90 A3 00 3C */	stw r5, 0x3c(r3)
/* 80A3BF7C  90 03 00 40 */	stw r0, 0x40(r3)
/* 80A3BF80  80 04 08 E0 */	lwz r0, 0x8e0(r4)
/* 80A3BF84  90 03 00 44 */	stw r0, 0x44(r3)
/* 80A3BF88  80 A4 08 E4 */	lwz r5, 0x8e4(r4)
/* 80A3BF8C  80 04 08 E8 */	lwz r0, 0x8e8(r4)
/* 80A3BF90  90 A3 00 48 */	stw r5, 0x48(r3)
/* 80A3BF94  90 03 00 4C */	stw r0, 0x4c(r3)
/* 80A3BF98  80 04 08 EC */	lwz r0, 0x8ec(r4)
/* 80A3BF9C  90 03 00 50 */	stw r0, 0x50(r3)
/* 80A3BFA0  80 A4 08 F0 */	lwz r5, 0x8f0(r4)
/* 80A3BFA4  80 04 08 F4 */	lwz r0, 0x8f4(r4)
/* 80A3BFA8  90 A3 00 54 */	stw r5, 0x54(r3)
/* 80A3BFAC  90 03 00 58 */	stw r0, 0x58(r3)
/* 80A3BFB0  80 04 08 F8 */	lwz r0, 0x8f8(r4)
/* 80A3BFB4  90 03 00 5C */	stw r0, 0x5c(r3)
/* 80A3BFB8  80 A4 08 FC */	lwz r5, 0x8fc(r4)
/* 80A3BFBC  80 04 09 00 */	lwz r0, 0x900(r4)
/* 80A3BFC0  90 A3 00 60 */	stw r5, 0x60(r3)
/* 80A3BFC4  90 03 00 64 */	stw r0, 0x64(r3)
/* 80A3BFC8  80 04 09 04 */	lwz r0, 0x904(r4)
/* 80A3BFCC  90 03 00 68 */	stw r0, 0x68(r3)
/* 80A3BFD0  80 A4 09 08 */	lwz r5, 0x908(r4)
/* 80A3BFD4  80 04 09 0C */	lwz r0, 0x90c(r4)
/* 80A3BFD8  90 A3 00 6C */	stw r5, 0x6c(r3)
/* 80A3BFDC  90 03 00 70 */	stw r0, 0x70(r3)
/* 80A3BFE0  80 04 09 10 */	lwz r0, 0x910(r4)
/* 80A3BFE4  90 03 00 74 */	stw r0, 0x74(r3)
/* 80A3BFE8  80 A4 09 14 */	lwz r5, 0x914(r4)
/* 80A3BFEC  80 04 09 18 */	lwz r0, 0x918(r4)
/* 80A3BFF0  90 A3 00 78 */	stw r5, 0x78(r3)
/* 80A3BFF4  90 03 00 7C */	stw r0, 0x7c(r3)
/* 80A3BFF8  80 04 09 1C */	lwz r0, 0x91c(r4)
/* 80A3BFFC  90 03 00 80 */	stw r0, 0x80(r3)
/* 80A3C000  80 A4 09 20 */	lwz r5, 0x920(r4)
/* 80A3C004  80 04 09 24 */	lwz r0, 0x924(r4)
/* 80A3C008  90 A3 00 84 */	stw r5, 0x84(r3)
/* 80A3C00C  90 03 00 88 */	stw r0, 0x88(r3)
/* 80A3C010  80 04 09 28 */	lwz r0, 0x928(r4)
/* 80A3C014  90 03 00 8C */	stw r0, 0x8c(r3)
/* 80A3C018  80 A4 09 2C */	lwz r5, 0x92c(r4)
/* 80A3C01C  80 04 09 30 */	lwz r0, 0x930(r4)
/* 80A3C020  90 A3 00 90 */	stw r5, 0x90(r3)
/* 80A3C024  90 03 00 94 */	stw r0, 0x94(r3)
/* 80A3C028  80 04 09 34 */	lwz r0, 0x934(r4)
/* 80A3C02C  90 03 00 98 */	stw r0, 0x98(r3)
/* 80A3C030  80 A4 09 38 */	lwz r5, 0x938(r4)
/* 80A3C034  80 04 09 3C */	lwz r0, 0x93c(r4)
/* 80A3C038  90 A3 00 9C */	stw r5, 0x9c(r3)
/* 80A3C03C  90 03 00 A0 */	stw r0, 0xa0(r3)
/* 80A3C040  80 04 09 40 */	lwz r0, 0x940(r4)
/* 80A3C044  90 03 00 A4 */	stw r0, 0xa4(r3)
/* 80A3C048  80 A4 09 44 */	lwz r5, 0x944(r4)
/* 80A3C04C  80 04 09 48 */	lwz r0, 0x948(r4)
/* 80A3C050  90 A3 00 A8 */	stw r5, 0xa8(r3)
/* 80A3C054  90 03 00 AC */	stw r0, 0xac(r3)
/* 80A3C058  80 04 09 4C */	lwz r0, 0x94c(r4)
/* 80A3C05C  90 03 00 B0 */	stw r0, 0xb0(r3)
/* 80A3C060  80 A4 09 50 */	lwz r5, 0x950(r4)
/* 80A3C064  80 04 09 54 */	lwz r0, 0x954(r4)
/* 80A3C068  90 A3 00 B4 */	stw r5, 0xb4(r3)
/* 80A3C06C  90 03 00 B8 */	stw r0, 0xb8(r3)
/* 80A3C070  80 04 09 58 */	lwz r0, 0x958(r4)
/* 80A3C074  90 03 00 BC */	stw r0, 0xbc(r3)
/* 80A3C078  80 A4 09 5C */	lwz r5, 0x95c(r4)
/* 80A3C07C  80 04 09 60 */	lwz r0, 0x960(r4)
/* 80A3C080  90 A3 00 C0 */	stw r5, 0xc0(r3)
/* 80A3C084  90 03 00 C4 */	stw r0, 0xc4(r3)
/* 80A3C088  80 04 09 64 */	lwz r0, 0x964(r4)
/* 80A3C08C  90 03 00 C8 */	stw r0, 0xc8(r3)
/* 80A3C090  80 A4 09 68 */	lwz r5, 0x968(r4)
/* 80A3C094  80 04 09 6C */	lwz r0, 0x96c(r4)
/* 80A3C098  90 A3 00 CC */	stw r5, 0xcc(r3)
/* 80A3C09C  90 03 00 D0 */	stw r0, 0xd0(r3)
/* 80A3C0A0  80 04 09 70 */	lwz r0, 0x970(r4)
/* 80A3C0A4  90 03 00 D4 */	stw r0, 0xd4(r3)
/* 80A3C0A8  80 A4 09 74 */	lwz r5, 0x974(r4)
/* 80A3C0AC  80 04 09 78 */	lwz r0, 0x978(r4)
/* 80A3C0B0  90 A3 00 D8 */	stw r5, 0xd8(r3)
/* 80A3C0B4  90 03 00 DC */	stw r0, 0xdc(r3)
/* 80A3C0B8  80 04 09 7C */	lwz r0, 0x97c(r4)
/* 80A3C0BC  90 03 00 E0 */	stw r0, 0xe0(r3)
/* 80A3C0C0  80 A4 09 80 */	lwz r5, 0x980(r4)
/* 80A3C0C4  80 04 09 84 */	lwz r0, 0x984(r4)
/* 80A3C0C8  90 A3 00 E4 */	stw r5, 0xe4(r3)
/* 80A3C0CC  90 03 00 E8 */	stw r0, 0xe8(r3)
/* 80A3C0D0  80 04 09 88 */	lwz r0, 0x988(r4)
/* 80A3C0D4  90 03 00 EC */	stw r0, 0xec(r3)
/* 80A3C0D8  80 A4 09 8C */	lwz r5, 0x98c(r4)
/* 80A3C0DC  80 04 09 90 */	lwz r0, 0x990(r4)
/* 80A3C0E0  90 A3 00 F0 */	stw r5, 0xf0(r3)
/* 80A3C0E4  90 03 00 F4 */	stw r0, 0xf4(r3)
/* 80A3C0E8  80 04 09 94 */	lwz r0, 0x994(r4)
/* 80A3C0EC  90 03 00 F8 */	stw r0, 0xf8(r3)
/* 80A3C0F0  3C 60 80 A4 */	lis r3, __vt__16daNpc_Kn_Param_c@ha
/* 80A3C0F4  38 03 32 A8 */	addi r0, r3, __vt__16daNpc_Kn_Param_c@l
/* 80A3C0F8  3C 60 80 A4 */	lis r3, l_HIO@ha
/* 80A3C0FC  94 03 33 D8 */	stwu r0, l_HIO@l(r3)
/* 80A3C100  3C 80 80 A4 */	lis r4, __dt__16daNpc_Kn_Param_cFv@ha
/* 80A3C104  38 84 C1 24 */	addi r4, r4, __dt__16daNpc_Kn_Param_cFv@l
/* 80A3C108  3C A0 80 A4 */	lis r5, lit_5904@ha
/* 80A3C10C  38 A5 33 CC */	addi r5, r5, lit_5904@l
/* 80A3C110  4B FE E8 89 */	bl __register_global_object
/* 80A3C114  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80A3C118  7C 08 03 A6 */	mtlr r0
/* 80A3C11C  38 21 00 40 */	addi r1, r1, 0x40
/* 80A3C120  4E 80 00 20 */	blr 
