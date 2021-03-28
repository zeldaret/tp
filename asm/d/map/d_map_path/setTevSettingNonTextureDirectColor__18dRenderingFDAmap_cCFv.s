lbl_8003CE78:
/* 8003CE78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8003CE7C  7C 08 02 A6 */	mflr r0
/* 8003CE80  90 01 00 14 */	stw r0, 0x14(r1)
/* 8003CE84  38 60 00 01 */	li r3, 1
/* 8003CE88  48 32 2A 09 */	bl GXSetNumTevStages
/* 8003CE8C  38 60 00 01 */	li r3, 1
/* 8003CE90  48 32 0C A1 */	bl GXSetNumChans
/* 8003CE94  38 60 00 00 */	li r3, 0
/* 8003CE98  48 31 EF 65 */	bl GXSetNumTexGens
/* 8003CE9C  38 60 00 00 */	li r3, 0
/* 8003CEA0  38 80 00 FF */	li r4, 0xff
/* 8003CEA4  38 A0 00 FF */	li r5, 0xff
/* 8003CEA8  38 C0 00 04 */	li r6, 4
/* 8003CEAC  48 32 28 49 */	bl GXSetTevOrder
/* 8003CEB0  38 60 00 00 */	li r3, 0
/* 8003CEB4  38 80 00 0F */	li r4, 0xf
/* 8003CEB8  38 A0 00 0F */	li r5, 0xf
/* 8003CEBC  38 C0 00 0F */	li r6, 0xf
/* 8003CEC0  38 E0 00 02 */	li r7, 2
/* 8003CEC4  48 32 23 61 */	bl GXSetTevColorIn
/* 8003CEC8  38 60 00 00 */	li r3, 0
/* 8003CECC  38 80 00 00 */	li r4, 0
/* 8003CED0  38 A0 00 00 */	li r5, 0
/* 8003CED4  38 C0 00 00 */	li r6, 0
/* 8003CED8  38 E0 00 01 */	li r7, 1
/* 8003CEDC  39 00 00 00 */	li r8, 0
/* 8003CEE0  48 32 23 CD */	bl GXSetTevColorOp
/* 8003CEE4  38 60 00 00 */	li r3, 0
/* 8003CEE8  38 80 00 07 */	li r4, 7
/* 8003CEEC  38 A0 00 07 */	li r5, 7
/* 8003CEF0  38 C0 00 07 */	li r6, 7
/* 8003CEF4  38 E0 00 07 */	li r7, 7
/* 8003CEF8  48 32 23 71 */	bl GXSetTevAlphaIn
/* 8003CEFC  38 60 00 00 */	li r3, 0
/* 8003CF00  38 80 00 00 */	li r4, 0
/* 8003CF04  38 A0 00 00 */	li r5, 0
/* 8003CF08  38 C0 00 00 */	li r6, 0
/* 8003CF0C  38 E0 00 01 */	li r7, 1
/* 8003CF10  39 00 00 00 */	li r8, 0
/* 8003CF14  48 32 24 01 */	bl GXSetTevAlphaOp
/* 8003CF18  38 60 00 07 */	li r3, 7
/* 8003CF1C  38 80 00 00 */	li r4, 0
/* 8003CF20  38 A0 00 01 */	li r5, 1
/* 8003CF24  38 C0 00 07 */	li r6, 7
/* 8003CF28  38 E0 00 00 */	li r7, 0
/* 8003CF2C  48 32 26 F9 */	bl GXSetAlphaCompare
/* 8003CF30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8003CF34  7C 08 03 A6 */	mtlr r0
/* 8003CF38  38 21 00 10 */	addi r1, r1, 0x10
/* 8003CF3C  4E 80 00 20 */	blr 
