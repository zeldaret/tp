lbl_8031AD64:
/* 8031AD64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8031AD68  7C 08 02 A6 */	mflr r0
/* 8031AD6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8031AD70  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8031AD74  7C 7F 1B 78 */	mr r31, r3
/* 8031AD78  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 8031AD7C  80 64 00 00 */	lwz r3, 0(r4)
/* 8031AD80  80 04 00 08 */	lwz r0, 8(r4)
/* 8031AD84  7C 03 00 50 */	subf r0, r3, r0
/* 8031AD88  90 1F 00 04 */	stw r0, 4(r31)
/* 8031AD8C  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 8031AD90  80 64 00 08 */	lwz r3, 8(r4)
/* 8031AD94  38 63 00 69 */	addi r3, r3, 0x69
/* 8031AD98  80 04 00 0C */	lwz r0, 0xc(r4)
/* 8031AD9C  7C 03 00 40 */	cmplw r3, r0
/* 8031ADA0  40 81 00 08 */	ble lbl_8031ADA8
/* 8031ADA4  48 04 63 31 */	bl GDOverflowed
lbl_8031ADA8:
/* 8031ADA8  A0 1F 00 08 */	lhz r0, 8(r31)
/* 8031ADAC  28 00 FF FF */	cmplwi r0, 0xffff
/* 8031ADB0  41 82 00 10 */	beq lbl_8031ADC0
/* 8031ADB4  38 60 00 00 */	li r3, 0
/* 8031ADB8  38 9F 00 08 */	addi r4, r31, 8
/* 8031ADBC  48 00 91 D9 */	bl loadTexNo__FUlRCUs
lbl_8031ADC0:
/* 8031ADC0  38 60 00 00 */	li r3, 0
/* 8031ADC4  88 9F 00 0A */	lbz r4, 0xa(r31)
/* 8031ADC8  88 BF 00 0B */	lbz r5, 0xb(r31)
/* 8031ADCC  88 DF 00 0C */	lbz r6, 0xc(r31)
/* 8031ADD0  38 E0 00 FF */	li r7, 0xff
/* 8031ADD4  39 00 00 FF */	li r8, 0xff
/* 8031ADD8  39 20 00 FF */	li r9, 0xff
/* 8031ADDC  4B FF 43 2D */	bl J3DGDSetTevOrder__F13_GXTevStageID13_GXTexCoordID11_GXTexMapID12_GXChannelID13_GXTexCoordID11_GXTexMapID12_GXChannelID
/* 8031ADE0  88 1F 00 0B */	lbz r0, 0xb(r31)
/* 8031ADE4  54 04 1E B8 */	rlwinm r4, r0, 3, 0x1a, 0x1c
/* 8031ADE8  3C 60 80 43 */	lis r3, sTexCoordScaleTable__6J3DSys@ha
/* 8031ADEC  38 03 4C 2C */	addi r0, r3, sTexCoordScaleTable__6J3DSys@l
/* 8031ADF0  7D 00 22 14 */	add r8, r0, r4
/* 8031ADF4  88 7F 00 0A */	lbz r3, 0xa(r31)
/* 8031ADF8  A0 88 00 00 */	lhz r4, 0(r8)
/* 8031ADFC  A0 08 00 04 */	lhz r0, 4(r8)
/* 8031AE00  20 00 00 01 */	subfic r0, r0, 1
/* 8031AE04  7C 00 00 34 */	cntlzw r0, r0
/* 8031AE08  54 05 DE 3E */	rlwinm r5, r0, 0x1b, 0x18, 0x1f
/* 8031AE0C  38 C0 00 00 */	li r6, 0
/* 8031AE10  A0 E8 00 02 */	lhz r7, 2(r8)
/* 8031AE14  A0 08 00 06 */	lhz r0, 6(r8)
/* 8031AE18  20 00 00 01 */	subfic r0, r0, 1
/* 8031AE1C  7C 00 00 34 */	cntlzw r0, r0
/* 8031AE20  54 08 DE 3E */	rlwinm r8, r0, 0x1b, 0x18, 0x1f
/* 8031AE24  39 20 00 00 */	li r9, 0
/* 8031AE28  4B FF 34 0D */	bl J3DGDSetTexCoordScale2__F13_GXTexCoordIDUsUcUcUsUcUc
/* 8031AE2C  80 FF 00 0E */	lwz r7, 0xe(r31)
/* 8031AE30  38 00 00 61 */	li r0, 0x61
/* 8031AE34  80 AD 94 00 */	lwz r5, __GDCurrentDL(r13)
/* 8031AE38  80 85 00 08 */	lwz r4, 8(r5)
/* 8031AE3C  38 64 00 01 */	addi r3, r4, 1
/* 8031AE40  90 65 00 08 */	stw r3, 8(r5)
/* 8031AE44  98 04 00 00 */	stb r0, 0(r4)
/* 8031AE48  54 E6 46 3E */	srwi r6, r7, 0x18
/* 8031AE4C  80 AD 94 00 */	lwz r5, __GDCurrentDL(r13)
/* 8031AE50  80 85 00 08 */	lwz r4, 8(r5)
/* 8031AE54  38 64 00 01 */	addi r3, r4, 1
/* 8031AE58  90 65 00 08 */	stw r3, 8(r5)
/* 8031AE5C  98 C4 00 00 */	stb r6, 0(r4)
/* 8031AE60  54 E6 86 3E */	rlwinm r6, r7, 0x10, 0x18, 0x1f
/* 8031AE64  80 AD 94 00 */	lwz r5, __GDCurrentDL(r13)
/* 8031AE68  80 85 00 08 */	lwz r4, 8(r5)
/* 8031AE6C  38 64 00 01 */	addi r3, r4, 1
/* 8031AE70  90 65 00 08 */	stw r3, 8(r5)
/* 8031AE74  98 C4 00 00 */	stb r6, 0(r4)
/* 8031AE78  54 E6 C6 3E */	rlwinm r6, r7, 0x18, 0x18, 0x1f
/* 8031AE7C  80 AD 94 00 */	lwz r5, __GDCurrentDL(r13)
/* 8031AE80  80 85 00 08 */	lwz r4, 8(r5)
/* 8031AE84  38 64 00 01 */	addi r3, r4, 1
/* 8031AE88  90 65 00 08 */	stw r3, 8(r5)
/* 8031AE8C  98 C4 00 00 */	stb r6, 0(r4)
/* 8031AE90  80 AD 94 00 */	lwz r5, __GDCurrentDL(r13)
/* 8031AE94  80 85 00 08 */	lwz r4, 8(r5)
/* 8031AE98  38 64 00 01 */	addi r3, r4, 1
/* 8031AE9C  90 65 00 08 */	stw r3, 8(r5)
/* 8031AEA0  98 E4 00 00 */	stb r7, 0(r4)
/* 8031AEA4  80 FF 00 12 */	lwz r7, 0x12(r31)
/* 8031AEA8  80 AD 94 00 */	lwz r5, __GDCurrentDL(r13)
/* 8031AEAC  80 85 00 08 */	lwz r4, 8(r5)
/* 8031AEB0  38 64 00 01 */	addi r3, r4, 1
/* 8031AEB4  90 65 00 08 */	stw r3, 8(r5)
/* 8031AEB8  98 04 00 00 */	stb r0, 0(r4)
/* 8031AEBC  54 E6 46 3E */	srwi r6, r7, 0x18
/* 8031AEC0  80 AD 94 00 */	lwz r5, __GDCurrentDL(r13)
/* 8031AEC4  80 85 00 08 */	lwz r4, 8(r5)
/* 8031AEC8  38 64 00 01 */	addi r3, r4, 1
/* 8031AECC  90 65 00 08 */	stw r3, 8(r5)
/* 8031AED0  98 C4 00 00 */	stb r6, 0(r4)
/* 8031AED4  54 E6 86 3E */	rlwinm r6, r7, 0x10, 0x18, 0x1f
/* 8031AED8  80 AD 94 00 */	lwz r5, __GDCurrentDL(r13)
/* 8031AEDC  80 85 00 08 */	lwz r4, 8(r5)
/* 8031AEE0  38 64 00 01 */	addi r3, r4, 1
/* 8031AEE4  90 65 00 08 */	stw r3, 8(r5)
/* 8031AEE8  98 C4 00 00 */	stb r6, 0(r4)
/* 8031AEEC  54 E6 C6 3E */	rlwinm r6, r7, 0x18, 0x18, 0x1f
/* 8031AEF0  80 AD 94 00 */	lwz r5, __GDCurrentDL(r13)
/* 8031AEF4  80 85 00 08 */	lwz r4, 8(r5)
/* 8031AEF8  38 64 00 01 */	addi r3, r4, 1
/* 8031AEFC  90 65 00 08 */	stw r3, 8(r5)
/* 8031AF00  98 C4 00 00 */	stb r6, 0(r4)
/* 8031AF04  80 AD 94 00 */	lwz r5, __GDCurrentDL(r13)
/* 8031AF08  80 85 00 08 */	lwz r4, 8(r5)
/* 8031AF0C  38 64 00 01 */	addi r3, r4, 1
/* 8031AF10  90 65 00 08 */	stw r3, 8(r5)
/* 8031AF14  98 E4 00 00 */	stb r7, 0(r4)
/* 8031AF18  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 8031AF1C  64 66 10 00 */	oris r6, r3, 0x1000
/* 8031AF20  80 AD 94 00 */	lwz r5, __GDCurrentDL(r13)
/* 8031AF24  80 85 00 08 */	lwz r4, 8(r5)
/* 8031AF28  38 64 00 01 */	addi r3, r4, 1
/* 8031AF2C  90 65 00 08 */	stw r3, 8(r5)
/* 8031AF30  98 04 00 00 */	stb r0, 0(r4)
/* 8031AF34  54 C5 46 3E */	srwi r5, r6, 0x18
/* 8031AF38  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 8031AF3C  80 64 00 08 */	lwz r3, 8(r4)
/* 8031AF40  38 03 00 01 */	addi r0, r3, 1
/* 8031AF44  90 04 00 08 */	stw r0, 8(r4)
/* 8031AF48  98 A3 00 00 */	stb r5, 0(r3)
/* 8031AF4C  54 C5 86 3E */	rlwinm r5, r6, 0x10, 0x18, 0x1f
/* 8031AF50  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 8031AF54  80 64 00 08 */	lwz r3, 8(r4)
/* 8031AF58  38 03 00 01 */	addi r0, r3, 1
/* 8031AF5C  90 04 00 08 */	stw r0, 8(r4)
/* 8031AF60  98 A3 00 00 */	stb r5, 0(r3)
/* 8031AF64  54 C5 C6 3E */	rlwinm r5, r6, 0x18, 0x18, 0x1f
/* 8031AF68  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 8031AF6C  80 64 00 08 */	lwz r3, 8(r4)
/* 8031AF70  38 03 00 01 */	addi r0, r3, 1
/* 8031AF74  90 04 00 08 */	stw r0, 8(r4)
/* 8031AF78  98 A3 00 00 */	stb r5, 0(r3)
/* 8031AF7C  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 8031AF80  80 64 00 08 */	lwz r3, 8(r4)
/* 8031AF84  38 03 00 01 */	addi r0, r3, 1
/* 8031AF88  90 04 00 08 */	stw r0, 8(r4)
/* 8031AF8C  98 C3 00 00 */	stb r6, 0(r3)
/* 8031AF90  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8031AF94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8031AF98  7C 08 03 A6 */	mtlr r0
/* 8031AF9C  38 21 00 10 */	addi r1, r1, 0x10
/* 8031AFA0  4E 80 00 20 */	blr 
