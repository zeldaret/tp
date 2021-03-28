lbl_805E01F8:
/* 805E01F8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805E01FC  7C 08 02 A6 */	mflr r0
/* 805E0200  90 01 00 34 */	stw r0, 0x34(r1)
/* 805E0204  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 805E0208  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 805E020C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 805E0210  88 04 5D B0 */	lbz r0, 0x5db0(r4)
/* 805E0214  7C 00 07 74 */	extsb r0, r0
/* 805E0218  1C 00 00 38 */	mulli r0, r0, 0x38
/* 805E021C  7C 84 02 14 */	add r4, r4, r0
/* 805E0220  83 E4 5D 74 */	lwz r31, 0x5d74(r4)
/* 805E0224  C0 03 05 F4 */	lfs f0, 0x5f4(r3)
/* 805E0228  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 805E022C  C0 03 05 F8 */	lfs f0, 0x5f8(r3)
/* 805E0230  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 805E0234  C0 03 05 FC */	lfs f0, 0x5fc(r3)
/* 805E0238  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 805E023C  C0 03 06 00 */	lfs f0, 0x600(r3)
/* 805E0240  D0 01 00 08 */	stfs f0, 8(r1)
/* 805E0244  C0 03 06 04 */	lfs f0, 0x604(r3)
/* 805E0248  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 805E024C  C0 03 06 08 */	lfs f0, 0x608(r3)
/* 805E0250  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 805E0254  38 7F 02 48 */	addi r3, r31, 0x248
/* 805E0258  38 81 00 14 */	addi r4, r1, 0x14
/* 805E025C  38 A1 00 08 */	addi r5, r1, 8
/* 805E0260  4B BA 09 B8 */	b Reset__9dCamera_cF4cXyz4cXyz
/* 805E0264  38 7F 02 48 */	addi r3, r31, 0x248
/* 805E0268  4B B8 12 44 */	b Start__9dCamera_cFv
/* 805E026C  38 7F 02 48 */	addi r3, r31, 0x248
/* 805E0270  38 80 00 00 */	li r4, 0
/* 805E0274  4B B8 2D 98 */	b SetTrimSize__9dCamera_cFl
/* 805E0278  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805E027C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805E0280  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 805E0284  4B A6 21 E4 */	b reset__14dEvt_control_cFv
/* 805E0288  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 805E028C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805E0290  7C 08 03 A6 */	mtlr r0
/* 805E0294  38 21 00 30 */	addi r1, r1, 0x30
/* 805E0298  4E 80 00 20 */	blr 
