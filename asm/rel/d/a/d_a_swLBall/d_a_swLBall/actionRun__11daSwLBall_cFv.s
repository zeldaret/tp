lbl_80D4F080:
/* 80D4F080  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D4F084  7C 08 02 A6 */	mflr r0
/* 80D4F088  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D4F08C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D4F090  93 C1 00 08 */	stw r30, 8(r1)
/* 80D4F094  7C 7F 1B 78 */	mr r31, r3
/* 80D4F098  4B FF FC E9 */	bl search_lb__11daSwLBall_cFv
/* 80D4F09C  7F E3 FB 78 */	mr r3, r31
/* 80D4F0A0  4B FF FC 2D */	bl checkArea__11daSwLBall_cFv
/* 80D4F0A4  7C 7E 1B 78 */	mr r30, r3
/* 80D4F0A8  88 1F 05 72 */	lbz r0, 0x572(r31)
/* 80D4F0AC  2C 00 00 02 */	cmpwi r0, 2
/* 80D4F0B0  41 82 01 08 */	beq lbl_80D4F1B8
/* 80D4F0B4  40 80 01 4C */	bge lbl_80D4F200
/* 80D4F0B8  2C 00 00 00 */	cmpwi r0, 0
/* 80D4F0BC  41 82 00 10 */	beq lbl_80D4F0CC
/* 80D4F0C0  40 80 00 C8 */	bge lbl_80D4F188
/* 80D4F0C4  48 00 01 3C */	b lbl_80D4F200
/* 80D4F0C8  48 00 01 38 */	b lbl_80D4F200
lbl_80D4F0CC:
/* 80D4F0CC  2C 1E 00 00 */	cmpwi r30, 0
/* 80D4F0D0  41 82 00 98 */	beq lbl_80D4F168
/* 80D4F0D4  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D4F0D8  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 80D4F0DC  98 1F 05 70 */	stb r0, 0x570(r31)
/* 80D4F0E0  88 1F 05 70 */	lbz r0, 0x570(r31)
/* 80D4F0E4  28 00 00 FF */	cmplwi r0, 0xff
/* 80D4F0E8  40 82 00 0C */	bne lbl_80D4F0F4
/* 80D4F0EC  38 00 00 0F */	li r0, 0xf
/* 80D4F0F0  98 1F 05 70 */	stb r0, 0x570(r31)
lbl_80D4F0F4:
/* 80D4F0F4  80 9F 00 B0 */	lwz r4, 0xb0(r31)
/* 80D4F0F8  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 80D4F0FC  28 00 00 01 */	cmplwi r0, 1
/* 80D4F100  40 82 00 34 */	bne lbl_80D4F134
/* 80D4F104  88 1F 05 70 */	lbz r0, 0x570(r31)
/* 80D4F108  28 00 00 00 */	cmplwi r0, 0
/* 80D4F10C  40 82 00 54 */	bne lbl_80D4F160
/* 80D4F110  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D4F114  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D4F118  54 84 86 3E */	rlwinm r4, r4, 0x10, 0x18, 0x1f
/* 80D4F11C  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80D4F120  7C 05 07 74 */	extsb r5, r0
/* 80D4F124  4B 2E 60 DD */	bl onSwitch__10dSv_info_cFii
/* 80D4F128  38 00 00 03 */	li r0, 3
/* 80D4F12C  98 1F 05 72 */	stb r0, 0x572(r31)
/* 80D4F130  48 00 00 30 */	b lbl_80D4F160
lbl_80D4F134:
/* 80D4F134  88 1F 05 70 */	lbz r0, 0x570(r31)
/* 80D4F138  28 00 00 00 */	cmplwi r0, 0
/* 80D4F13C  40 82 00 24 */	bne lbl_80D4F160
/* 80D4F140  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D4F144  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D4F148  54 84 86 3E */	rlwinm r4, r4, 0x10, 0x18, 0x1f
/* 80D4F14C  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80D4F150  7C 05 07 74 */	extsb r5, r0
/* 80D4F154  4B 2E 60 AD */	bl onSwitch__10dSv_info_cFii
/* 80D4F158  38 00 00 02 */	li r0, 2
/* 80D4F15C  98 1F 05 72 */	stb r0, 0x572(r31)
lbl_80D4F160:
/* 80D4F160  38 00 00 01 */	li r0, 1
/* 80D4F164  98 1F 05 72 */	stb r0, 0x572(r31)
lbl_80D4F168:
/* 80D4F168  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D4F16C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D4F170  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D4F174  54 04 86 3E */	rlwinm r4, r0, 0x10, 0x18, 0x1f
/* 80D4F178  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80D4F17C  7C 05 07 74 */	extsb r5, r0
/* 80D4F180  4B 2E 61 31 */	bl offSwitch__10dSv_info_cFii
/* 80D4F184  48 00 00 7C */	b lbl_80D4F200
lbl_80D4F188:
/* 80D4F188  2C 1E 00 00 */	cmpwi r30, 0
/* 80D4F18C  40 82 00 10 */	bne lbl_80D4F19C
/* 80D4F190  38 00 00 00 */	li r0, 0
/* 80D4F194  98 1F 05 72 */	stb r0, 0x572(r31)
/* 80D4F198  48 00 00 68 */	b lbl_80D4F200
lbl_80D4F19C:
/* 80D4F19C  38 7F 05 70 */	addi r3, r31, 0x570
/* 80D4F1A0  48 00 03 0D */	bl func_80D4F4AC
/* 80D4F1A4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D4F1A8  40 82 00 58 */	bne lbl_80D4F200
/* 80D4F1AC  38 00 00 02 */	li r0, 2
/* 80D4F1B0  98 1F 05 72 */	stb r0, 0x572(r31)
/* 80D4F1B4  48 00 00 4C */	b lbl_80D4F200
lbl_80D4F1B8:
/* 80D4F1B8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D4F1BC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D4F1C0  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D4F1C4  54 04 86 3E */	rlwinm r4, r0, 0x10, 0x18, 0x1f
/* 80D4F1C8  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80D4F1CC  7C 05 07 74 */	extsb r5, r0
/* 80D4F1D0  4B 2E 60 31 */	bl onSwitch__10dSv_info_cFii
/* 80D4F1D4  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D4F1D8  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80D4F1DC  28 00 00 01 */	cmplwi r0, 1
/* 80D4F1E0  40 82 00 10 */	bne lbl_80D4F1F0
/* 80D4F1E4  38 00 00 03 */	li r0, 3
/* 80D4F1E8  98 1F 05 72 */	stb r0, 0x572(r31)
/* 80D4F1EC  48 00 00 14 */	b lbl_80D4F200
lbl_80D4F1F0:
/* 80D4F1F0  2C 1E 00 00 */	cmpwi r30, 0
/* 80D4F1F4  40 82 00 0C */	bne lbl_80D4F200
/* 80D4F1F8  38 00 00 00 */	li r0, 0
/* 80D4F1FC  98 1F 05 72 */	stb r0, 0x572(r31)
lbl_80D4F200:
/* 80D4F200  7F E3 FB 78 */	mr r3, r31
/* 80D4F204  48 00 00 21 */	bl PutCrrPos__11daSwLBall_cFv
/* 80D4F208  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D4F20C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D4F210  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D4F214  7C 08 03 A6 */	mtlr r0
/* 80D4F218  38 21 00 10 */	addi r1, r1, 0x10
/* 80D4F21C  4E 80 00 20 */	blr 
