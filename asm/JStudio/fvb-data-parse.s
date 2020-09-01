.include "macros.inc"

.section .text, "ax" # 802850ac


.global JStudio_NS_fvb_NS_data_NS_TParse_TParagraph_NS_getData
JStudio_NS_fvb_NS_data_NS_TParse_TParagraph_NS_getData:
/* 802850AC 00281FEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802850B0 00281FF0  7C 08 02 A6 */	mflr r0
/* 802850B4 00281FF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802850B8 00281FF8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802850BC 00281FFC  7C 9F 23 78 */	mr r31, r4
/* 802850C0 00282000  80 63 00 00 */	lwz r3, 0(r3)
/* 802850C4 00282004  38 BF 00 04 */	addi r5, r31, 4
/* 802850C8 00282008  38 C0 00 00 */	li r6, 0
/* 802850CC 0028200C  48 05 77 99 */	bl JGadget_NS_binary_NS_parseVariableUInt_16_32_following
/* 802850D0 00282010  80 9F 00 00 */	lwz r4, 0(r31)
/* 802850D4 00282014  28 04 00 00 */	cmplwi r4, 0
/* 802850D8 00282018  40 82 00 14 */	bne lbl_802850EC
/* 802850DC 0028201C  38 00 00 00 */	li r0, 0
/* 802850E0 00282020  90 1F 00 08 */	stw r0, 8(r31)
/* 802850E4 00282024  90 7F 00 0C */	stw r3, 0xc(r31)
/* 802850E8 00282028  48 00 00 18 */	b lbl_80285100
lbl_802850EC:
/* 802850EC 0028202C  90 7F 00 08 */	stw r3, 8(r31)
/* 802850F0 00282030  38 04 00 03 */	addi r0, r4, 3
/* 802850F4 00282034  54 00 00 3A */	rlwinm r0, r0, 0, 0, 0x1d
/* 802850F8 00282038  7C 03 02 14 */	add r0, r3, r0
/* 802850FC 0028203C  90 1F 00 0C */	stw r0, 0xc(r31)
lbl_80285100:
/* 80285100 00282040  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80285104 00282044  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80285108 00282048  7C 08 03 A6 */	mtlr r0
/* 8028510C 0028204C  38 21 00 10 */	addi r1, r1, 0x10
/* 80285110 00282050  4E 80 00 20 */	blr 

