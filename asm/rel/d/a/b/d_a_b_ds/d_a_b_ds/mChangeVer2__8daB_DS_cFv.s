lbl_805CCEB4:
/* 805CCEB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805CCEB8  7C 08 02 A6 */	mflr r0
/* 805CCEBC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805CCEC0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805CCEC4  7C 7F 1B 78 */	mr r31, r3
/* 805CCEC8  88 83 08 57 */	lbz r4, 0x857(r3)
/* 805CCECC  28 04 00 FF */	cmplwi r4, 0xff
/* 805CCED0  41 82 00 18 */	beq lbl_805CCEE8
/* 805CCED4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805CCED8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805CCEDC  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 805CCEE0  7C 05 07 74 */	extsb r5, r0
/* 805CCEE4  4B A6 83 CC */	b offSwitch__10dSv_info_cFii
lbl_805CCEE8:
/* 805CCEE8  3C 60 80 5E */	lis r3, lit_3933@ha
/* 805CCEEC  C0 03 CA 58 */	lfs f0, lit_3933@l(r3)
/* 805CCEF0  D0 1F 07 EC */	stfs f0, 0x7ec(r31)
/* 805CCEF4  38 60 00 00 */	li r3, 0
/* 805CCEF8  B0 7F 04 E4 */	sth r3, 0x4e4(r31)
/* 805CCEFC  38 00 00 01 */	li r0, 1
/* 805CCF00  98 1F 08 52 */	stb r0, 0x852(r31)
/* 805CCF04  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 805CCF08  98 7F 08 50 */	stb r3, 0x850(r31)
/* 805CCF0C  80 1F 2A 90 */	lwz r0, 0x2a90(r31)
/* 805CCF10  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 805CCF14  90 1F 2A 90 */	stw r0, 0x2a90(r31)
/* 805CCF18  80 1F 2B CC */	lwz r0, 0x2bcc(r31)
/* 805CCF1C  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 805CCF20  90 1F 2B CC */	stw r0, 0x2bcc(r31)
/* 805CCF24  80 1F 2A A4 */	lwz r0, 0x2aa4(r31)
/* 805CCF28  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 805CCF2C  90 1F 2A A4 */	stw r0, 0x2aa4(r31)
/* 805CCF30  80 1F 2B E0 */	lwz r0, 0x2be0(r31)
/* 805CCF34  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 805CCF38  90 1F 2B E0 */	stw r0, 0x2be0(r31)
/* 805CCF3C  80 1F 2A 78 */	lwz r0, 0x2a78(r31)
/* 805CCF40  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 805CCF44  90 1F 2A 78 */	stw r0, 0x2a78(r31)
/* 805CCF48  80 1F 2B B4 */	lwz r0, 0x2bb4(r31)
/* 805CCF4C  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 805CCF50  90 1F 2B B4 */	stw r0, 0x2bb4(r31)
/* 805CCF54  80 1F 0A DC */	lwz r0, 0xadc(r31)
/* 805CCF58  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 805CCF5C  90 1F 0A DC */	stw r0, 0xadc(r31)
/* 805CCF60  80 1F 0A F0 */	lwz r0, 0xaf0(r31)
/* 805CCF64  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 805CCF68  90 1F 0A F0 */	stw r0, 0xaf0(r31)
/* 805CCF6C  80 1F 0A C4 */	lwz r0, 0xac4(r31)
/* 805CCF70  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 805CCF74  90 1F 0A C4 */	stw r0, 0xac4(r31)
/* 805CCF78  80 1F 0B 60 */	lwz r0, 0xb60(r31)
/* 805CCF7C  60 00 00 04 */	ori r0, r0, 4
/* 805CCF80  90 1F 0B 60 */	stw r0, 0xb60(r31)
/* 805CCF84  80 1F 0B 60 */	lwz r0, 0xb60(r31)
/* 805CCF88  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 805CCF8C  90 1F 0B 60 */	stw r0, 0xb60(r31)
/* 805CCF90  80 1F 0B 60 */	lwz r0, 0xb60(r31)
/* 805CCF94  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 805CCF98  90 1F 0B 60 */	stw r0, 0xb60(r31)
/* 805CCF9C  80 1F 0B 60 */	lwz r0, 0xb60(r31)
/* 805CCFA0  60 00 20 00 */	ori r0, r0, 0x2000
/* 805CCFA4  90 1F 0B 60 */	stw r0, 0xb60(r31)
/* 805CCFA8  98 7F 0B 7E */	stb r3, 0xb7e(r31)
/* 805CCFAC  80 1F 29 54 */	lwz r0, 0x2954(r31)
/* 805CCFB0  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 805CCFB4  90 1F 29 54 */	stw r0, 0x2954(r31)
/* 805CCFB8  80 1F 29 68 */	lwz r0, 0x2968(r31)
/* 805CCFBC  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 805CCFC0  90 1F 29 68 */	stw r0, 0x2968(r31)
/* 805CCFC4  3C 80 D8 FC */	lis r4, 0xD8FC /* 0xD8FBFDFF@ha */
/* 805CCFC8  38 A4 FD FF */	addi r5, r4, 0xFDFF /* 0xD8FBFDFF@l */
/* 805CCFCC  38 80 00 02 */	li r4, 2
/* 805CCFD0  38 00 00 05 */	li r0, 5
/* 805CCFD4  7C 09 03 A6 */	mtctr r0
lbl_805CCFD8:
/* 805CCFD8  7C DF 1A 14 */	add r6, r31, r3
/* 805CCFDC  90 A6 0C 24 */	stw r5, 0xc24(r6)
/* 805CCFE0  98 86 0C B6 */	stb r4, 0xcb6(r6)
/* 805CCFE4  80 06 0C 98 */	lwz r0, 0xc98(r6)
/* 805CCFE8  60 00 00 01 */	ori r0, r0, 1
/* 805CCFEC  90 06 0C 98 */	stw r0, 0xc98(r6)
/* 805CCFF0  80 06 0C 98 */	lwz r0, 0xc98(r6)
/* 805CCFF4  54 00 06 2C */	rlwinm r0, r0, 0, 0x18, 0x16
/* 805CCFF8  90 06 0C 98 */	stw r0, 0xc98(r6)
/* 805CCFFC  80 06 0C 98 */	lwz r0, 0xc98(r6)
/* 805CD000  54 00 05 EA */	rlwinm r0, r0, 0, 0x17, 0x15
/* 805CD004  90 06 0C 98 */	stw r0, 0xc98(r6)
/* 805CD008  80 06 0C 98 */	lwz r0, 0xc98(r6)
/* 805CD00C  60 00 00 04 */	ori r0, r0, 4
/* 805CD010  90 06 0C 98 */	stw r0, 0xc98(r6)
/* 805CD014  38 63 01 38 */	addi r3, r3, 0x138
/* 805CD018  42 00 FF C0 */	bdnz lbl_805CCFD8
/* 805CD01C  38 60 00 06 */	li r3, 6
/* 805CD020  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 805CD024  7C 04 07 74 */	extsb r4, r0
/* 805CD028  4B A6 09 24 */	b dComIfGs_onZoneSwitch__Fii
/* 805CD02C  38 60 00 08 */	li r3, 8
/* 805CD030  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 805CD034  7C 04 07 74 */	extsb r4, r0
/* 805CD038  4B A6 09 14 */	b dComIfGs_onZoneSwitch__Fii
/* 805CD03C  38 00 00 01 */	li r0, 1
/* 805CD040  98 1F 08 53 */	stb r0, 0x853(r31)
/* 805CD044  38 00 00 00 */	li r0, 0
/* 805CD048  98 1F 08 4F */	stb r0, 0x84f(r31)
/* 805CD04C  3C 60 80 5E */	lis r3, l_HIO@ha
/* 805CD050  38 63 DA BC */	addi r3, r3, l_HIO@l
/* 805CD054  A8 03 00 4A */	lha r0, 0x4a(r3)
/* 805CD058  B0 1F 05 62 */	sth r0, 0x562(r31)
/* 805CD05C  B0 1F 05 60 */	sth r0, 0x560(r31)
/* 805CD060  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805CD064  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805CD068  7C 08 03 A6 */	mtlr r0
/* 805CD06C  38 21 00 10 */	addi r1, r1, 0x10
/* 805CD070  4E 80 00 20 */	blr 
