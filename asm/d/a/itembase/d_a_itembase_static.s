.include "macros.inc"

.section .text, "ax" # 80037a5c


.global daItemBase_c_NS_getItemNo
daItemBase_c_NS_getItemNo:
/* 80037A5C 0003499C  88 63 09 2A */	lbz r3, 0x92a(r3)
/* 80037A60 000349A0  4E 80 00 20 */	blr 

.global daItemBase_c_NS_hide
daItemBase_c_NS_hide:
/* 80037A64 000349A4  88 03 09 2B */	lbz r0, 0x92b(r3)
/* 80037A68 000349A8  54 00 06 3C */	rlwinm r0, r0, 0, 0x18, 0x1e
/* 80037A6C 000349AC  98 03 09 2B */	stb r0, 0x92b(r3)
/* 80037A70 000349B0  4E 80 00 20 */	blr 

.global daItemBase_c_NS_show
daItemBase_c_NS_show:
/* 80037A74 000349B4  88 03 09 2B */	lbz r0, 0x92b(r3)
/* 80037A78 000349B8  60 00 00 01 */	ori r0, r0, 1
/* 80037A7C 000349BC  98 03 09 2B */	stb r0, 0x92b(r3)
/* 80037A80 000349C0  4E 80 00 20 */	blr 

.global daItemBase_c_NS_changeDraw
daItemBase_c_NS_changeDraw:
/* 80037A84 000349C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80037A88 000349C8  7C 08 02 A6 */	mflr r0
/* 80037A8C 000349CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80037A90 000349D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80037A94 000349D4  7C 7F 1B 78 */	mr r31, r3
/* 80037A98 000349D8  48 00 00 35 */	bl daItemBase_c_NS_chkDraw
/* 80037A9C 000349DC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80037AA0 000349E0  41 82 00 10 */	beq lbl_80037AB0
/* 80037AA4 000349E4  7F E3 FB 78 */	mr r3, r31
/* 80037AA8 000349E8  4B FF FF BD */	bl daItemBase_c_NS_hide
/* 80037AAC 000349EC  48 00 00 0C */	b lbl_80037AB8
lbl_80037AB0:
/* 80037AB0 000349F0  7F E3 FB 78 */	mr r3, r31
/* 80037AB4 000349F4  4B FF FF C1 */	bl daItemBase_c_NS_show
lbl_80037AB8:
/* 80037AB8 000349F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80037ABC 000349FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80037AC0 00034A00  7C 08 03 A6 */	mtlr r0
/* 80037AC4 00034A04  38 21 00 10 */	addi r1, r1, 0x10
/* 80037AC8 00034A08  4E 80 00 20 */	blr 

.global daItemBase_c_NS_chkDraw
daItemBase_c_NS_chkDraw:
/* 80037ACC 00034A0C  88 03 09 2B */	lbz r0, 0x92b(r3)
/* 80037AD0 00034A10  54 03 07 FE */	clrlwi r3, r0, 0x1f
/* 80037AD4 00034A14  30 03 FF FF */	addic r0, r3, -1
/* 80037AD8 00034A18  7C 00 19 10 */	subfe r0, r0, r3
/* 80037ADC 00034A1C  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 80037AE0 00034A20  4E 80 00 20 */	blr 

.global daItemBase_c_NS_dead
daItemBase_c_NS_dead:
/* 80037AE4 00034A24  88 03 09 2B */	lbz r0, 0x92b(r3)
/* 80037AE8 00034A28  60 00 00 02 */	ori r0, r0, 2
/* 80037AEC 00034A2C  98 03 09 2B */	stb r0, 0x92b(r3)
/* 80037AF0 00034A30  4E 80 00 20 */	blr 
/* 80037AF4 00034A34  88 03 09 2B */	lbz r0, 0x92b(r3)
/* 80037AF8 00034A38  54 03 07 BC */	rlwinm r3, r0, 0, 0x1e, 0x1e
/* 80037AFC 00034A3C  30 03 FF FF */	addic r0, r3, -1
/* 80037B00 00034A40  7C 00 19 10 */	subfe r0, r0, r3
/* 80037B04 00034A44  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 80037B08 00034A48  4E 80 00 20 */	blr 
/* 80037B0C 00034A4C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80037B10 00034A50  7C 08 02 A6 */	mflr r0
/* 80037B14 00034A54  90 01 00 24 */	stw r0, 0x24(r1)
/* 80037B18 00034A58  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80037B1C 00034A5C  7C 7F 1B 78 */	mr r31, r3
/* 80037B20 00034A60  4B FF FF 3D */	bl daItemBase_c_NS_getItemNo
/* 80037B24 00034A64  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80037B28 00034A68  1C A0 00 18 */	mulli r5, r0, 0x18
/* 80037B2C 00034A6C  3C 60 80 3B */	lis r3, lbl_803AC5A0@ha
/* 80037B30 00034A70  38 83 C5 A0 */	addi r4, r3, lbl_803AC5A0@l
/* 80037B34 00034A74  7D 44 2A 14 */	add r10, r4, r5
/* 80037B38 00034A78  A8 0A 00 0C */	lha r0, 0xc(r10)
/* 80037B3C 00034A7C  90 01 00 08 */	stw r0, 8(r1)
/* 80037B40 00034A80  7F E3 FB 78 */	mr r3, r31
/* 80037B44 00034A84  7C 84 28 2E */	lwzx r4, r4, r5
/* 80037B48 00034A88  A8 AA 00 04 */	lha r5, 4(r10)
/* 80037B4C 00034A8C  A8 CA 00 06 */	lha r6, 6(r10)
/* 80037B50 00034A90  38 E0 FF FF */	li r7, -1
/* 80037B54 00034A94  A9 0A 00 08 */	lha r8, 8(r10)
/* 80037B58 00034A98  39 20 FF FF */	li r9, -1
/* 80037B5C 00034A9C  A9 4A 00 0A */	lha r10, 0xa(r10)
/* 80037B60 00034AA0  48 10 CB FD */	bl daItemBase_c_NS_CreateItemHeap
/* 80037B64 00034AA4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80037B68 00034AA8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80037B6C 00034AAC  7C 08 03 A6 */	mtlr r0
/* 80037B70 00034AB0  38 21 00 20 */	addi r1, r1, 0x20
/* 80037B74 00034AB4  4E 80 00 20 */	blr 
.global CheckFieldItemCreateHeap
CheckFieldItemCreateHeap:
/* 80037B78 00034AB8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80037B7C 00034ABC  7C 08 02 A6 */	mflr r0
/* 80037B80 00034AC0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80037B84 00034AC4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80037B88 00034AC8  7C 7F 1B 78 */	mr r31, r3
/* 80037B8C 00034ACC  4B FF FE D1 */	bl daItemBase_c_NS_getItemNo
/* 80037B90 00034AD0  54 66 25 36 */	rlwinm r6, r3, 4, 0x14, 0x1b
/* 80037B94 00034AD4  38 00 FF FF */	li r0, -1
/* 80037B98 00034AD8  90 01 00 08 */	stw r0, 8(r1)
/* 80037B9C 00034ADC  7F E3 FB 78 */	mr r3, r31
/* 80037BA0 00034AE0  3C 80 80 3B */	lis r4, lbl_803ADD88@ha
/* 80037BA4 00034AE4  38 A4 DD 88 */	addi r5, r4, lbl_803ADD88@l
/* 80037BA8 00034AE8  7C 85 30 2E */	lwzx r4, r5, r6
/* 80037BAC 00034AEC  7D 45 32 14 */	add r10, r5, r6
/* 80037BB0 00034AF0  A8 AA 00 04 */	lha r5, 4(r10)
/* 80037BB4 00034AF4  38 C0 FF FF */	li r6, -1
/* 80037BB8 00034AF8  38 E0 FF FF */	li r7, -1
/* 80037BBC 00034AFC  A9 0A 00 06 */	lha r8, 6(r10)
/* 80037BC0 00034B00  39 20 FF FF */	li r9, -1
/* 80037BC4 00034B04  A9 4A 00 08 */	lha r10, 8(r10)
/* 80037BC8 00034B08  48 10 CB 95 */	bl daItemBase_c_NS_CreateItemHeap
/* 80037BCC 00034B0C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80037BD0 00034B10  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80037BD4 00034B14  7C 08 03 A6 */	mtlr r0
/* 80037BD8 00034B18  38 21 00 20 */	addi r1, r1, 0x20
/* 80037BDC 00034B1C  4E 80 00 20 */	blr 
