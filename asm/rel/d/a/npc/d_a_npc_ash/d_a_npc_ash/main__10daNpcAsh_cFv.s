lbl_8095BF6C:
/* 8095BF6C  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 8095BF70  7C 08 02 A6 */	mflr r0
/* 8095BF74  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 8095BF78  93 E1 00 AC */	stw r31, 0xac(r1)
/* 8095BF7C  93 C1 00 A8 */	stw r30, 0xa8(r1)
/* 8095BF80  7C 7E 1B 78 */	mr r30, r3
/* 8095BF84  3C 60 80 96 */	lis r3, m__16daNpcAsh_Param_c@ha
/* 8095BF88  3B E3 D6 40 */	addi r31, r3, m__16daNpcAsh_Param_c@l
/* 8095BF8C  38 7E 0F 30 */	addi r3, r30, 0xf30
/* 8095BF90  4B A0 60 88 */	b __ptmf_test
/* 8095BF94  2C 03 00 00 */	cmpwi r3, 0
/* 8095BF98  41 82 00 18 */	beq lbl_8095BFB0
/* 8095BF9C  7F C3 F3 78 */	mr r3, r30
/* 8095BFA0  38 80 00 00 */	li r4, 0
/* 8095BFA4  39 9E 0F 30 */	addi r12, r30, 0xf30
/* 8095BFA8  4B A0 60 DC */	b __ptmf_scall
/* 8095BFAC  60 00 00 00 */	nop 
lbl_8095BFB0:
/* 8095BFB0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8095BFB4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8095BFB8  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 8095BFBC  28 00 00 00 */	cmplwi r0, 0
/* 8095BFC0  41 82 00 30 */	beq lbl_8095BFF0
/* 8095BFC4  A0 1E 00 F8 */	lhz r0, 0xf8(r30)
/* 8095BFC8  28 00 00 01 */	cmplwi r0, 1
/* 8095BFCC  41 82 00 24 */	beq lbl_8095BFF0
/* 8095BFD0  80 9E 0F 4C */	lwz r4, 0xf4c(r30)
/* 8095BFD4  3C 04 00 01 */	addis r0, r4, 1
/* 8095BFD8  28 00 FF FF */	cmplwi r0, 0xffff
/* 8095BFDC  41 82 00 14 */	beq lbl_8095BFF0
/* 8095BFE0  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 8095BFE4  4B 6E 77 08 */	b setPtI_Id__14dEvt_control_cFUi
/* 8095BFE8  38 00 FF FF */	li r0, -1
/* 8095BFEC  90 1E 0F 4C */	stw r0, 0xf4c(r30)
lbl_8095BFF0:
/* 8095BFF0  80 7F 00 90 */	lwz r3, 0x90(r31)
/* 8095BFF4  80 1F 00 94 */	lwz r0, 0x94(r31)
/* 8095BFF8  90 61 00 28 */	stw r3, 0x28(r1)
/* 8095BFFC  90 01 00 2C */	stw r0, 0x2c(r1)
/* 8095C000  80 1F 00 98 */	lwz r0, 0x98(r31)
/* 8095C004  90 01 00 30 */	stw r0, 0x30(r1)
/* 8095C008  38 7F 00 00 */	addi r3, r31, 0
/* 8095C00C  C0 03 00 44 */	lfs f0, 0x44(r3)
/* 8095C010  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8095C014  80 1F 00 9C */	lwz r0, 0x9c(r31)
/* 8095C018  90 01 00 08 */	stw r0, 8(r1)
/* 8095C01C  38 01 00 28 */	addi r0, r1, 0x28
/* 8095C020  90 01 00 08 */	stw r0, 8(r1)
/* 8095C024  80 7F 00 A0 */	lwz r3, 0xa0(r31)
/* 8095C028  80 1F 00 A4 */	lwz r0, 0xa4(r31)
/* 8095C02C  90 61 00 34 */	stw r3, 0x34(r1)
/* 8095C030  90 01 00 38 */	stw r0, 0x38(r1)
/* 8095C034  80 1F 00 A8 */	lwz r0, 0xa8(r31)
/* 8095C038  90 01 00 3C */	stw r0, 0x3c(r1)
/* 8095C03C  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8095C040  80 1F 00 AC */	lwz r0, 0xac(r31)
/* 8095C044  90 01 00 0C */	stw r0, 0xc(r1)
/* 8095C048  38 01 00 34 */	addi r0, r1, 0x34
/* 8095C04C  90 01 00 0C */	stw r0, 0xc(r1)
/* 8095C050  80 7F 00 B0 */	lwz r3, 0xb0(r31)
/* 8095C054  80 1F 00 B4 */	lwz r0, 0xb4(r31)
/* 8095C058  90 61 00 40 */	stw r3, 0x40(r1)
/* 8095C05C  90 01 00 44 */	stw r0, 0x44(r1)
/* 8095C060  80 1F 00 B8 */	lwz r0, 0xb8(r31)
/* 8095C064  90 01 00 48 */	stw r0, 0x48(r1)
/* 8095C068  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 8095C06C  80 1F 00 BC */	lwz r0, 0xbc(r31)
/* 8095C070  90 01 00 10 */	stw r0, 0x10(r1)
/* 8095C074  38 01 00 40 */	addi r0, r1, 0x40
/* 8095C078  90 01 00 10 */	stw r0, 0x10(r1)
/* 8095C07C  80 7F 00 C0 */	lwz r3, 0xc0(r31)
/* 8095C080  80 1F 00 C4 */	lwz r0, 0xc4(r31)
/* 8095C084  90 61 00 4C */	stw r3, 0x4c(r1)
/* 8095C088  90 01 00 50 */	stw r0, 0x50(r1)
/* 8095C08C  80 1F 00 C8 */	lwz r0, 0xc8(r31)
/* 8095C090  90 01 00 54 */	stw r0, 0x54(r1)
/* 8095C094  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8095C098  80 1F 00 CC */	lwz r0, 0xcc(r31)
/* 8095C09C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8095C0A0  38 01 00 4C */	addi r0, r1, 0x4c
/* 8095C0A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8095C0A8  80 7F 00 D0 */	lwz r3, 0xd0(r31)
/* 8095C0AC  80 1F 00 D4 */	lwz r0, 0xd4(r31)
/* 8095C0B0  90 61 00 58 */	stw r3, 0x58(r1)
/* 8095C0B4  90 01 00 5C */	stw r0, 0x5c(r1)
/* 8095C0B8  80 1F 00 D8 */	lwz r0, 0xd8(r31)
/* 8095C0BC  90 01 00 60 */	stw r0, 0x60(r1)
/* 8095C0C0  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 8095C0C4  80 1F 00 DC */	lwz r0, 0xdc(r31)
/* 8095C0C8  90 01 00 18 */	stw r0, 0x18(r1)
/* 8095C0CC  38 01 00 58 */	addi r0, r1, 0x58
/* 8095C0D0  90 01 00 18 */	stw r0, 0x18(r1)
/* 8095C0D4  80 7F 00 E0 */	lwz r3, 0xe0(r31)
/* 8095C0D8  80 1F 00 E4 */	lwz r0, 0xe4(r31)
/* 8095C0DC  90 61 00 64 */	stw r3, 0x64(r1)
/* 8095C0E0  90 01 00 68 */	stw r0, 0x68(r1)
/* 8095C0E4  80 1F 00 E8 */	lwz r0, 0xe8(r31)
/* 8095C0E8  90 01 00 6C */	stw r0, 0x6c(r1)
/* 8095C0EC  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 8095C0F0  80 1F 00 EC */	lwz r0, 0xec(r31)
/* 8095C0F4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8095C0F8  38 01 00 64 */	addi r0, r1, 0x64
/* 8095C0FC  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8095C100  80 7F 00 F0 */	lwz r3, 0xf0(r31)
/* 8095C104  80 1F 00 F4 */	lwz r0, 0xf4(r31)
/* 8095C108  90 61 00 70 */	stw r3, 0x70(r1)
/* 8095C10C  90 01 00 74 */	stw r0, 0x74(r1)
/* 8095C110  80 1F 00 F8 */	lwz r0, 0xf8(r31)
/* 8095C114  90 01 00 78 */	stw r0, 0x78(r1)
/* 8095C118  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 8095C11C  80 1F 00 FC */	lwz r0, 0xfc(r31)
/* 8095C120  90 01 00 20 */	stw r0, 0x20(r1)
/* 8095C124  38 01 00 70 */	addi r0, r1, 0x70
/* 8095C128  90 01 00 20 */	stw r0, 0x20(r1)
/* 8095C12C  80 7F 01 00 */	lwz r3, 0x100(r31)
/* 8095C130  80 1F 01 04 */	lwz r0, 0x104(r31)
/* 8095C134  90 61 00 7C */	stw r3, 0x7c(r1)
/* 8095C138  90 01 00 80 */	stw r0, 0x80(r1)
/* 8095C13C  80 1F 01 08 */	lwz r0, 0x108(r31)
/* 8095C140  90 01 00 84 */	stw r0, 0x84(r1)
/* 8095C144  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 8095C148  80 1F 01 0C */	lwz r0, 0x10c(r31)
/* 8095C14C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8095C150  38 01 00 7C */	addi r0, r1, 0x7c
/* 8095C154  90 01 00 24 */	stw r0, 0x24(r1)
/* 8095C158  38 A1 00 84 */	addi r5, r1, 0x84
/* 8095C15C  38 9F 01 0C */	addi r4, r31, 0x10c
/* 8095C160  38 00 00 04 */	li r0, 4
/* 8095C164  7C 09 03 A6 */	mtctr r0
lbl_8095C168:
/* 8095C168  80 64 00 04 */	lwz r3, 4(r4)
/* 8095C16C  84 04 00 08 */	lwzu r0, 8(r4)
/* 8095C170  90 65 00 04 */	stw r3, 4(r5)
/* 8095C174  94 05 00 08 */	stwu r0, 8(r5)
/* 8095C178  42 00 FF F0 */	bdnz lbl_8095C168
/* 8095C17C  38 01 00 08 */	addi r0, r1, 8
/* 8095C180  90 01 00 88 */	stw r0, 0x88(r1)
/* 8095C184  38 01 00 0C */	addi r0, r1, 0xc
/* 8095C188  90 01 00 8C */	stw r0, 0x8c(r1)
/* 8095C18C  38 01 00 10 */	addi r0, r1, 0x10
/* 8095C190  90 01 00 90 */	stw r0, 0x90(r1)
/* 8095C194  38 01 00 14 */	addi r0, r1, 0x14
/* 8095C198  90 01 00 94 */	stw r0, 0x94(r1)
/* 8095C19C  38 01 00 18 */	addi r0, r1, 0x18
/* 8095C1A0  90 01 00 98 */	stw r0, 0x98(r1)
/* 8095C1A4  38 01 00 1C */	addi r0, r1, 0x1c
/* 8095C1A8  90 01 00 9C */	stw r0, 0x9c(r1)
/* 8095C1AC  38 01 00 20 */	addi r0, r1, 0x20
/* 8095C1B0  90 01 00 A0 */	stw r0, 0xa0(r1)
/* 8095C1B4  38 01 00 24 */	addi r0, r1, 0x24
/* 8095C1B8  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 8095C1BC  A8 7E 09 DE */	lha r3, 0x9de(r30)
/* 8095C1C0  7C 60 07 35 */	extsh. r0, r3
/* 8095C1C4  41 80 00 18 */	blt lbl_8095C1DC
/* 8095C1C8  2C 03 00 08 */	cmpwi r3, 8
/* 8095C1CC  40 80 00 10 */	bge lbl_8095C1DC
/* 8095C1D0  7F C3 F3 78 */	mr r3, r30
/* 8095C1D4  38 81 00 88 */	addi r4, r1, 0x88
/* 8095C1D8  4B 7F 6F 78 */	b playExpressionAnm__8daNpcF_cFPPPQ28daNpcF_c18daNpcF_anmPlayData
lbl_8095C1DC:
/* 8095C1DC  7F C3 F3 78 */	mr r3, r30
/* 8095C1E0  48 00 00 21 */	bl playMotion__10daNpcAsh_cFv
/* 8095C1E4  38 60 00 01 */	li r3, 1
/* 8095C1E8  83 E1 00 AC */	lwz r31, 0xac(r1)
/* 8095C1EC  83 C1 00 A8 */	lwz r30, 0xa8(r1)
/* 8095C1F0  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 8095C1F4  7C 08 03 A6 */	mtlr r0
/* 8095C1F8  38 21 00 B0 */	addi r1, r1, 0xb0
/* 8095C1FC  4E 80 00 20 */	blr 
