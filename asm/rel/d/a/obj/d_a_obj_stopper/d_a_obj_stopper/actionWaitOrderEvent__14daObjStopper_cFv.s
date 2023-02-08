lbl_80CEDA24:
/* 80CEDA24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CEDA28  7C 08 02 A6 */	mflr r0
/* 80CEDA2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CEDA30  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CEDA34  7C 7F 1B 78 */	mr r31, r3
/* 80CEDA38  38 7F 09 5F */	addi r3, r31, 0x95f
/* 80CEDA3C  48 00 15 29 */	bl func_80CEEF64
/* 80CEDA40  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80CEDA44  40 82 00 54 */	bne lbl_80CEDA98
/* 80CEDA48  38 00 00 02 */	li r0, 2
/* 80CEDA4C  98 1F 09 3C */	stb r0, 0x93c(r31)
/* 80CEDA50  88 7F 09 3D */	lbz r3, 0x93d(r31)
/* 80CEDA54  38 03 FF FF */	addi r0, r3, -1
/* 80CEDA58  98 1F 09 4D */	stb r0, 0x94d(r31)
/* 80CEDA5C  88 BF 09 4D */	lbz r5, 0x94d(r31)
/* 80CEDA60  7F E3 FB 78 */	mr r3, r31
/* 80CEDA64  54 A0 08 3C */	slwi r0, r5, 1
/* 80CEDA68  7C 9F 02 14 */	add r4, r31, r0
/* 80CEDA6C  A8 84 09 44 */	lha r4, 0x944(r4)
/* 80CEDA70  7C BF 2A 14 */	add r5, r31, r5
/* 80CEDA74  88 A5 09 4A */	lbz r5, 0x94a(r5)
/* 80CEDA78  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 80CEDA7C  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 80CEDA80  38 E0 00 00 */	li r7, 0
/* 80CEDA84  39 00 00 01 */	li r8, 1
/* 80CEDA88  4B 32 DB F5 */	bl fopAcM_orderOtherEventId__FP10fopAc_ac_csUcUsUsUs
/* 80CEDA8C  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 80CEDA90  60 00 00 02 */	ori r0, r0, 2
/* 80CEDA94  B0 1F 00 FA */	sth r0, 0xfa(r31)
lbl_80CEDA98:
/* 80CEDA98  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CEDA9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CEDAA0  7C 08 03 A6 */	mtlr r0
/* 80CEDAA4  38 21 00 10 */	addi r1, r1, 0x10
/* 80CEDAA8  4E 80 00 20 */	blr 
