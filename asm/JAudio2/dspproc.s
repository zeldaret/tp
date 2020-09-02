.include "macros.inc"

.section .text, "ax" # 8029e4e0


.global DSPReleaseHalt2
DSPReleaseHalt2:
/* 8029E4E0 0029B420  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8029E4E4 0029B424  7C 08 02 A6 */	mflr r0
/* 8029E4E8 0029B428  90 01 00 24 */	stw r0, 0x24(r1)
/* 8029E4EC 0029B42C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8029E4F0 0029B430  7C 7F 1B 78 */	mr r31, r3
/* 8029E4F4 0029B434  4B FF FB C9 */	bl DSP_CreateMap2
/* 8029E4F8 0029B438  7C 60 1B 78 */	mr r0, r3
/* 8029E4FC 0029B43C  38 61 00 08 */	addi r3, r1, 8
/* 8029E500 0029B440  53 E0 80 1E */	rlwimi r0, r31, 0x10, 0, 0xf
/* 8029E504 0029B444  38 80 00 00 */	li r4, 0
/* 8029E508 0029B448  90 01 00 08 */	stw r0, 8(r1)
/* 8029E50C 0029B44C  38 A0 00 00 */	li r5, 0
/* 8029E510 0029B450  48 00 02 D1 */	bl DSPSendCommands2
/* 8029E514 0029B454  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8029E518 0029B458  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8029E51C 0029B45C  7C 08 03 A6 */	mtlr r0
/* 8029E520 0029B460  38 21 00 20 */	addi r1, r1, 0x20
/* 8029E524 0029B464  4E 80 00 20 */	blr 
/* 8029E528 0029B468  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8029E52C 0029B46C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8029E530 0029B470  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8029E534 0029B474  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8029E538 0029B478  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8029E53C 0029B47C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
.global setup_callback
setup_callback:
/* 8029E540 0029B480  38 00 00 00 */	li r0, 0
/* 8029E544 0029B484  90 0D 8D 78 */	stw r0, lbl_804512F8-_SDA_BASE_(r13)
/* 8029E548 0029B488  4E 80 00 20 */	blr 
/* 8029E54C 0029B48C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8029E550 0029B490  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8029E554 0029B494  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8029E558 0029B498  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8029E55C 0029B49C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */

.global DsetupTable
DsetupTable:
/* 8029E560 0029B4A0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8029E564 0029B4A4  7C 08 02 A6 */	mflr r0
/* 8029E568 0029B4A8  39 00 00 01 */	li r8, 1
/* 8029E56C 0029B4AC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8029E570 0029B4B0  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 8029E574 0029B4B4  64 09 81 00 */	oris r9, r0, 0x8100
.global setup_callback
/* 8029E578 0029B4B8  3C 60 80 2A */	lis r3, setup_callback@ha
/* 8029E57C 0029B4BC  90 81 00 0C */	stw r4, 0xc(r1)
.global setup_callback
/* 8029E580 0029B4C0  38 03 E5 40 */	addi r0, r3, setup_callback@l
/* 8029E584 0029B4C4  38 61 00 08 */	addi r3, r1, 8
/* 8029E588 0029B4C8  38 80 00 05 */	li r4, 5
/* 8029E58C 0029B4CC  90 A1 00 10 */	stw r5, 0x10(r1)
/* 8029E590 0029B4D0  7C 05 03 78 */	mr r5, r0
/* 8029E594 0029B4D4  91 21 00 08 */	stw r9, 8(r1)
/* 8029E598 0029B4D8  90 C1 00 14 */	stw r6, 0x14(r1)
/* 8029E59C 0029B4DC  90 E1 00 18 */	stw r7, 0x18(r1)
/* 8029E5A0 0029B4E0  91 0D 8D 78 */	stw r8, lbl_804512F8-_SDA_BASE_(r13)
/* 8029E5A4 0029B4E4  48 00 02 3D */	bl DSPSendCommands2
lbl_8029E5A8:
/* 8029E5A8 0029B4E8  80 0D 8D 78 */	lwz r0, lbl_804512F8-_SDA_BASE_(r13)
/* 8029E5AC 0029B4EC  2C 00 00 00 */	cmpwi r0, 0
/* 8029E5B0 0029B4F0  40 82 FF F8 */	bne lbl_8029E5A8
/* 8029E5B4 0029B4F4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8029E5B8 0029B4F8  7C 08 03 A6 */	mtlr r0
/* 8029E5BC 0029B4FC  38 21 00 20 */	addi r1, r1, 0x20
/* 8029E5C0 0029B500  4E 80 00 20 */	blr 
/* 8029E5C4 0029B504  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8029E5C8 0029B508  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8029E5CC 0029B50C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8029E5D0 0029B510  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8029E5D4 0029B514  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8029E5D8 0029B518  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8029E5DC 0029B51C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */

.global DsetMixerLevel
DsetMixerLevel:
/* 8029E5E0 0029B520  C0 02 BD 70 */	lfs f0, lbl_80455770-_SDA2_BASE_(r2)
/* 8029E5E4 0029B524  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8029E5E8 0029B528  EC 00 00 72 */	fmuls f0, f0, f1
/* 8029E5EC 0029B52C  FC 00 00 1E */	fctiwz f0, f0
/* 8029E5F0 0029B530  D8 01 00 08 */	stfd f0, 8(r1)
/* 8029E5F4 0029B534  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8029E5F8 0029B538  B0 0D 82 48 */	sth r0, lbl_804507C8-_SDA_BASE_(r13)
/* 8029E5FC 0029B53C  38 21 00 10 */	addi r1, r1, 0x10
/* 8029E600 0029B540  4E 80 00 20 */	blr 
/* 8029E604 0029B544  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8029E608 0029B548  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8029E60C 0029B54C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8029E610 0029B550  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8029E614 0029B554  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8029E618 0029B558  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8029E61C 0029B55C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */

.global DsyncFrame2ch
DsyncFrame2ch:
/* 8029E620 0029B560  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8029E624 0029B564  7C 08 02 A6 */	mflr r0
/* 8029E628 0029B568  90 01 00 24 */	stw r0, 0x24(r1)
/* 8029E62C 0029B56C  54 60 82 1E */	rlwinm r0, r3, 0x10, 8, 0xf
/* 8029E630 0029B570  64 06 82 00 */	oris r6, r0, 0x8200
/* 8029E634 0029B574  A0 6D 82 48 */	lhz r3, lbl_804507C8-_SDA_BASE_(r13)
/* 8029E638 0029B578  38 00 00 00 */	li r0, 0
/* 8029E63C 0029B57C  90 81 00 0C */	stw r4, 0xc(r1)
/* 8029E640 0029B580  38 80 00 05 */	li r4, 5
/* 8029E644 0029B584  7C C6 1B 78 */	or r6, r6, r3
/* 8029E648 0029B588  38 61 00 08 */	addi r3, r1, 8
/* 8029E64C 0029B58C  90 A1 00 10 */	stw r5, 0x10(r1)
/* 8029E650 0029B590  38 A0 00 00 */	li r5, 0
/* 8029E654 0029B594  90 C1 00 08 */	stw r6, 8(r1)
/* 8029E658 0029B598  90 01 00 14 */	stw r0, 0x14(r1)
/* 8029E65C 0029B59C  90 01 00 18 */	stw r0, 0x18(r1)
/* 8029E660 0029B5A0  48 00 01 81 */	bl DSPSendCommands2
/* 8029E664 0029B5A4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8029E668 0029B5A8  7C 08 03 A6 */	mtlr r0
/* 8029E66C 0029B5AC  38 21 00 20 */	addi r1, r1, 0x20
/* 8029E670 0029B5B0  4E 80 00 20 */	blr 
/* 8029E674 0029B5B4  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8029E678 0029B5B8  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8029E67C 0029B5BC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */

.global DsyncFrame4ch
DsyncFrame4ch:
/* 8029E680 0029B5C0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8029E684 0029B5C4  7C 08 02 A6 */	mflr r0
/* 8029E688 0029B5C8  54 63 82 1E */	rlwinm r3, r3, 0x10, 8, 0xf
/* 8029E68C 0029B5CC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8029E690 0029B5D0  64 63 82 00 */	oris r3, r3, 0x8200
/* 8029E694 0029B5D4  A0 0D 82 48 */	lhz r0, lbl_804507C8-_SDA_BASE_(r13)
/* 8029E698 0029B5D8  90 81 00 0C */	stw r4, 0xc(r1)
/* 8029E69C 0029B5DC  38 80 00 05 */	li r4, 5
/* 8029E6A0 0029B5E0  7C 60 03 78 */	or r0, r3, r0
/* 8029E6A4 0029B5E4  38 61 00 08 */	addi r3, r1, 8
/* 8029E6A8 0029B5E8  90 A1 00 10 */	stw r5, 0x10(r1)
/* 8029E6AC 0029B5EC  38 A0 00 00 */	li r5, 0
/* 8029E6B0 0029B5F0  90 01 00 08 */	stw r0, 8(r1)
/* 8029E6B4 0029B5F4  90 C1 00 14 */	stw r6, 0x14(r1)
/* 8029E6B8 0029B5F8  90 E1 00 18 */	stw r7, 0x18(r1)
/* 8029E6BC 0029B5FC  48 00 01 25 */	bl DSPSendCommands2
/* 8029E6C0 0029B600  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8029E6C4 0029B604  7C 08 03 A6 */	mtlr r0
/* 8029E6C8 0029B608  38 21 00 20 */	addi r1, r1, 0x20
/* 8029E6CC 0029B60C  4E 80 00 20 */	blr 
/* 8029E6D0 0029B610  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8029E6D4 0029B614  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8029E6D8 0029B618  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8029E6DC 0029B61C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
