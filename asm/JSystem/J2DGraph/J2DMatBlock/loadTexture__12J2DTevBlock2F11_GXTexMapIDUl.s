lbl_802ED874:
/* 802ED874  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802ED878  7C 08 02 A6 */	mflr r0
/* 802ED87C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802ED880  28 05 00 02 */	cmplwi r5, 2
/* 802ED884  40 80 00 28 */	bge lbl_802ED8AC
/* 802ED888  54 A0 10 3A */	slwi r0, r5, 2
/* 802ED88C  7C 63 02 14 */	add r3, r3, r0
/* 802ED890  80 63 00 64 */	lwz r3, 0x64(r3)
/* 802ED894  28 03 00 00 */	cmplwi r3, 0
/* 802ED898  41 82 00 14 */	beq lbl_802ED8AC
/* 802ED89C  80 03 00 20 */	lwz r0, 0x20(r3)
/* 802ED8A0  28 00 00 00 */	cmplwi r0, 0
/* 802ED8A4  41 82 00 08 */	beq lbl_802ED8AC
/* 802ED8A8  4B FF 0F 99 */	bl load__10JUTTextureF11_GXTexMapID
lbl_802ED8AC:
/* 802ED8AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802ED8B0  7C 08 03 A6 */	mtlr r0
/* 802ED8B4  38 21 00 10 */	addi r1, r1, 0x10
/* 802ED8B8  4E 80 00 20 */	blr 
