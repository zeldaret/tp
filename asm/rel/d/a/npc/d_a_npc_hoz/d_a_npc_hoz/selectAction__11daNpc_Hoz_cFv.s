lbl_80A02F80:
/* 80A02F80  3C 80 80 A0 */	lis r4, cNullVec__6Z2Calc@ha /* 0x80A06804@ha */
/* 80A02F84  38 C4 68 04 */	addi r6, r4, cNullVec__6Z2Calc@l /* 0x80A06804@l */
/* 80A02F88  3C 80 80 3A */	lis r4, __ptmf_null@ha /* 0x803A2180@ha */
/* 80A02F8C  38 A4 21 80 */	addi r5, r4, __ptmf_null@l /* 0x803A2180@l */
/* 80A02F90  80 85 00 00 */	lwz r4, 0(r5)
/* 80A02F94  80 05 00 04 */	lwz r0, 4(r5)
/* 80A02F98  90 83 0F AC */	stw r4, 0xfac(r3)
/* 80A02F9C  90 03 0F B0 */	stw r0, 0xfb0(r3)
/* 80A02FA0  80 05 00 08 */	lwz r0, 8(r5)
/* 80A02FA4  90 03 0F B4 */	stw r0, 0xfb4(r3)
/* 80A02FA8  88 03 0F 80 */	lbz r0, 0xf80(r3)
/* 80A02FAC  2C 00 00 04 */	cmpwi r0, 4
/* 80A02FB0  41 82 00 84 */	beq lbl_80A03034
/* 80A02FB4  40 80 00 1C */	bge lbl_80A02FD0
/* 80A02FB8  2C 00 00 02 */	cmpwi r0, 2
/* 80A02FBC  41 82 00 40 */	beq lbl_80A02FFC
/* 80A02FC0  40 80 00 58 */	bge lbl_80A03018
/* 80A02FC4  2C 00 00 01 */	cmpwi r0, 1
/* 80A02FC8  40 80 00 18 */	bge lbl_80A02FE0
/* 80A02FCC  48 00 00 BC */	b lbl_80A03088
lbl_80A02FD0:
/* 80A02FD0  2C 00 00 06 */	cmpwi r0, 6
/* 80A02FD4  41 82 00 98 */	beq lbl_80A0306C
/* 80A02FD8  40 80 00 B0 */	bge lbl_80A03088
/* 80A02FDC  48 00 00 74 */	b lbl_80A03050
lbl_80A02FE0:
/* 80A02FE0  80 86 0E CC */	lwz r4, 0xecc(r6)
/* 80A02FE4  80 06 0E D0 */	lwz r0, 0xed0(r6)
/* 80A02FE8  90 83 0F AC */	stw r4, 0xfac(r3)
/* 80A02FEC  90 03 0F B0 */	stw r0, 0xfb0(r3)
/* 80A02FF0  80 06 0E D4 */	lwz r0, 0xed4(r6)
/* 80A02FF4  90 03 0F B4 */	stw r0, 0xfb4(r3)
/* 80A02FF8  48 00 00 A8 */	b lbl_80A030A0
lbl_80A02FFC:
/* 80A02FFC  80 86 0E D8 */	lwz r4, 0xed8(r6)
/* 80A03000  80 06 0E DC */	lwz r0, 0xedc(r6)
/* 80A03004  90 83 0F AC */	stw r4, 0xfac(r3)
/* 80A03008  90 03 0F B0 */	stw r0, 0xfb0(r3)
/* 80A0300C  80 06 0E E0 */	lwz r0, 0xee0(r6)
/* 80A03010  90 03 0F B4 */	stw r0, 0xfb4(r3)
/* 80A03014  48 00 00 8C */	b lbl_80A030A0
lbl_80A03018:
/* 80A03018  80 86 0E E4 */	lwz r4, 0xee4(r6)
/* 80A0301C  80 06 0E E8 */	lwz r0, 0xee8(r6)
/* 80A03020  90 83 0F AC */	stw r4, 0xfac(r3)
/* 80A03024  90 03 0F B0 */	stw r0, 0xfb0(r3)
/* 80A03028  80 06 0E EC */	lwz r0, 0xeec(r6)
/* 80A0302C  90 03 0F B4 */	stw r0, 0xfb4(r3)
/* 80A03030  48 00 00 70 */	b lbl_80A030A0
lbl_80A03034:
/* 80A03034  80 86 0E F0 */	lwz r4, 0xef0(r6)
/* 80A03038  80 06 0E F4 */	lwz r0, 0xef4(r6)
/* 80A0303C  90 83 0F AC */	stw r4, 0xfac(r3)
/* 80A03040  90 03 0F B0 */	stw r0, 0xfb0(r3)
/* 80A03044  80 06 0E F8 */	lwz r0, 0xef8(r6)
/* 80A03048  90 03 0F B4 */	stw r0, 0xfb4(r3)
/* 80A0304C  48 00 00 54 */	b lbl_80A030A0
lbl_80A03050:
/* 80A03050  80 86 0E FC */	lwz r4, 0xefc(r6)
/* 80A03054  80 06 0F 00 */	lwz r0, 0xf00(r6)
/* 80A03058  90 83 0F AC */	stw r4, 0xfac(r3)
/* 80A0305C  90 03 0F B0 */	stw r0, 0xfb0(r3)
/* 80A03060  80 06 0F 04 */	lwz r0, 0xf04(r6)
/* 80A03064  90 03 0F B4 */	stw r0, 0xfb4(r3)
/* 80A03068  48 00 00 38 */	b lbl_80A030A0
lbl_80A0306C:
/* 80A0306C  80 86 0F 08 */	lwz r4, 0xf08(r6)
/* 80A03070  80 06 0F 0C */	lwz r0, 0xf0c(r6)
/* 80A03074  90 83 0F AC */	stw r4, 0xfac(r3)
/* 80A03078  90 03 0F B0 */	stw r0, 0xfb0(r3)
/* 80A0307C  80 06 0F 10 */	lwz r0, 0xf10(r6)
/* 80A03080  90 03 0F B4 */	stw r0, 0xfb4(r3)
/* 80A03084  48 00 00 1C */	b lbl_80A030A0
lbl_80A03088:
/* 80A03088  80 86 0F 14 */	lwz r4, 0xf14(r6)
/* 80A0308C  80 06 0F 18 */	lwz r0, 0xf18(r6)
/* 80A03090  90 83 0F AC */	stw r4, 0xfac(r3)
/* 80A03094  90 03 0F B0 */	stw r0, 0xfb0(r3)
/* 80A03098  80 06 0F 1C */	lwz r0, 0xf1c(r6)
/* 80A0309C  90 03 0F B4 */	stw r0, 0xfb4(r3)
lbl_80A030A0:
/* 80A030A0  38 60 00 01 */	li r3, 1
/* 80A030A4  4E 80 00 20 */	blr 
