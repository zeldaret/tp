lbl_802AF010:
/* 802AF010  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802AF014  7C 08 02 A6 */	mflr r0
/* 802AF018  90 01 00 34 */	stw r0, 0x34(r1)
/* 802AF01C  39 61 00 30 */	addi r11, r1, 0x30
/* 802AF020  48 0B 31 B9 */	bl _savegpr_28
/* 802AF024  7C 7C 1B 78 */	mr r28, r3
/* 802AF028  7C 9D 23 78 */	mr r29, r4
/* 802AF02C  7C BE 2B 78 */	mr r30, r5
/* 802AF030  7C DF 33 78 */	mr r31, r6
/* 802AF034  3C 80 01 00 */	lis r4, 0x0100 /* 0x0100005A@ha */
/* 802AF038  38 04 00 5A */	addi r0, r4, 0x005A /* 0x0100005A@l */
/* 802AF03C  7C 1D 00 00 */	cmpw r29, r0
/* 802AF040  41 82 01 84 */	beq lbl_802AF1C4
/* 802AF044  40 80 00 30 */	bge lbl_802AF074
/* 802AF048  38 04 00 0D */	addi r0, r4, 0xd
/* 802AF04C  7C 1D 00 00 */	cmpw r29, r0
/* 802AF050  41 82 00 B8 */	beq lbl_802AF108
/* 802AF054  40 80 00 10 */	bge lbl_802AF064
/* 802AF058  2C 1D FF FF */	cmpwi r29, -1
/* 802AF05C  41 82 03 94 */	beq lbl_802AF3F0
/* 802AF060  48 00 01 E0 */	b lbl_802AF240
lbl_802AF064:
/* 802AF064  38 04 00 13 */	addi r0, r4, 0x13
/* 802AF068  7C 1D 00 00 */	cmpw r29, r0
/* 802AF06C  41 82 00 C0 */	beq lbl_802AF12C
/* 802AF070  48 00 01 D0 */	b lbl_802AF240
lbl_802AF074:
/* 802AF074  38 04 00 95 */	addi r0, r4, 0x95
/* 802AF078  7C 1D 00 00 */	cmpw r29, r0
/* 802AF07C  41 82 01 94 */	beq lbl_802AF210
/* 802AF080  40 80 00 24 */	bge lbl_802AF0A4
/* 802AF084  38 04 00 86 */	addi r0, r4, 0x86
/* 802AF088  7C 1D 00 00 */	cmpw r29, r0
/* 802AF08C  41 82 01 68 */	beq lbl_802AF1F4
/* 802AF090  41 80 01 B0 */	blt lbl_802AF240
/* 802AF094  38 04 00 89 */	addi r0, r4, 0x89
/* 802AF098  7C 1D 00 00 */	cmpw r29, r0
/* 802AF09C  40 80 01 A4 */	bge lbl_802AF240
/* 802AF0A0  48 00 01 70 */	b lbl_802AF210
lbl_802AF0A4:
/* 802AF0A4  3C 80 02 00 */	lis r4, 0x0200 /* 0x0200005D@ha */
/* 802AF0A8  38 84 00 5D */	addi r4, r4, 0x005D /* 0x0200005D@l */
/* 802AF0AC  7C 1D 20 00 */	cmpw r29, r4
/* 802AF0B0  41 82 00 0C */	beq lbl_802AF0BC
/* 802AF0B4  48 00 01 8C */	b lbl_802AF240
/* 802AF0B8  48 00 03 38 */	b lbl_802AF3F0
lbl_802AF0BC:
/* 802AF0BC  C0 1C 00 74 */	lfs f0, 0x74(r28)
/* 802AF0C0  38 00 00 21 */	li r0, 0x21
/* 802AF0C4  90 1C 00 80 */	stw r0, 0x80(r28)
/* 802AF0C8  C0 62 BF 98 */	lfs f3, lit_3372(r2)
/* 802AF0CC  EC 43 00 28 */	fsubs f2, f3, f0
/* 802AF0D0  80 1C 00 80 */	lwz r0, 0x80(r28)
/* 802AF0D4  C8 22 BF A8 */	lfd f1, lit_3561(r2)
/* 802AF0D8  90 01 00 1C */	stw r0, 0x1c(r1)
/* 802AF0DC  3C 00 43 30 */	lis r0, 0x4330
/* 802AF0E0  90 01 00 18 */	stw r0, 0x18(r1)
/* 802AF0E4  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 802AF0E8  EC 00 08 28 */	fsubs f0, f0, f1
/* 802AF0EC  EC 02 00 24 */	fdivs f0, f2, f0
/* 802AF0F0  D0 1C 00 78 */	stfs f0, 0x78(r28)
/* 802AF0F4  D0 7C 00 7C */	stfs f3, 0x7c(r28)
/* 802AF0F8  48 00 0A 9D */	bl bgmStreamPrepare__8Z2SeqMgrFUl
/* 802AF0FC  7F 83 E3 78 */	mr r3, r28
/* 802AF100  48 00 0D 19 */	bl bgmStreamPlay__8Z2SeqMgrFv
/* 802AF104  48 00 02 EC */	b lbl_802AF3F0
lbl_802AF108:
/* 802AF108  3B E0 00 01 */	li r31, 1
/* 802AF10C  C0 02 BF 98 */	lfs f0, lit_3372(r2)
/* 802AF110  D0 1C 00 14 */	stfs f0, 0x14(r28)
/* 802AF114  C0 02 BF 9C */	lfs f0, lit_3373(r2)
/* 802AF118  D0 1C 00 18 */	stfs f0, 0x18(r28)
/* 802AF11C  38 00 00 00 */	li r0, 0
/* 802AF120  90 1C 00 20 */	stw r0, 0x20(r28)
/* 802AF124  D0 1C 00 1C */	stfs f0, 0x1c(r28)
/* 802AF128  48 00 01 18 */	b lbl_802AF240
lbl_802AF12C:
/* 802AF12C  80 7C 00 00 */	lwz r3, 0(r28)
/* 802AF130  28 03 00 00 */	cmplwi r3, 0
/* 802AF134  41 82 00 10 */	beq lbl_802AF144
/* 802AF138  80 03 00 18 */	lwz r0, 0x18(r3)
/* 802AF13C  90 01 00 08 */	stw r0, 8(r1)
/* 802AF140  48 00 00 08 */	b lbl_802AF148
lbl_802AF144:
/* 802AF144  38 00 FF FF */	li r0, -1
lbl_802AF148:
/* 802AF148  7C 1D 00 40 */	cmplw r29, r0
/* 802AF14C  41 82 02 A4 */	beq lbl_802AF3F0
/* 802AF150  38 00 00 00 */	li r0, 0
/* 802AF154  80 6D 86 00 */	lwz r3, data_80450B80(r13)
/* 802AF158  98 03 00 1C */	stb r0, 0x1c(r3)
/* 802AF15C  80 6D 86 00 */	lwz r3, data_80450B80(r13)
/* 802AF160  38 80 00 00 */	li r4, 0
/* 802AF164  48 00 77 7D */	bl setSceneExist__10Z2SceneMgrFb
/* 802AF168  7F 83 E3 78 */	mr r3, r28
/* 802AF16C  38 80 00 01 */	li r4, 1
/* 802AF170  48 00 4F F5 */	bl setBattleBgmOff__8Z2SeqMgrFb
/* 802AF174  80 6D 85 E0 */	lwz r3, data_80450B60(r13)
/* 802AF178  38 63 07 28 */	addi r3, r3, 0x728
/* 802AF17C  38 80 00 00 */	li r4, 0
/* 802AF180  4B FF 2C BD */	bl stop__9JAISeqMgrFUl
/* 802AF184  80 6D 85 E0 */	lwz r3, data_80450B60(r13)
/* 802AF188  38 63 07 9C */	addi r3, r3, 0x79c
/* 802AF18C  38 80 00 00 */	li r4, 0
/* 802AF190  4B FF 4E D9 */	bl stop__12JAIStreamMgrFUl
/* 802AF194  93 A1 00 10 */	stw r29, 0x10(r1)
/* 802AF198  80 6D 85 E0 */	lwz r3, data_80450B60(r13)
/* 802AF19C  38 81 00 10 */	addi r4, r1, 0x10
/* 802AF1A0  7F 85 E3 78 */	mr r5, r28
/* 802AF1A4  38 C0 00 00 */	li r6, 0
/* 802AF1A8  81 83 00 00 */	lwz r12, 0(r3)
/* 802AF1AC  81 8C 00 08 */	lwz r12, 8(r12)
/* 802AF1B0  7D 89 03 A6 */	mtctr r12
/* 802AF1B4  4E 80 04 21 */	bctrl 
/* 802AF1B8  38 00 00 FF */	li r0, 0xff
/* 802AF1BC  98 1C 00 BC */	stb r0, 0xbc(r28)
/* 802AF1C0  48 00 02 30 */	b lbl_802AF3F0
lbl_802AF1C4:
/* 802AF1C4  80 6D 8D E0 */	lwz r3, mLinkPtr__14Z2CreatureLink(r13)
/* 802AF1C8  28 03 00 00 */	cmplwi r3, 0
/* 802AF1CC  41 82 00 74 */	beq lbl_802AF240
/* 802AF1D0  80 63 00 04 */	lwz r3, 4(r3)
/* 802AF1D4  28 03 00 00 */	cmplwi r3, 0
/* 802AF1D8  41 82 00 68 */	beq lbl_802AF240
/* 802AF1DC  C0 23 00 04 */	lfs f1, 4(r3)
/* 802AF1E0  C0 02 BF A0 */	lfs f0, lit_3559(r2)
/* 802AF1E4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802AF1E8  40 81 00 58 */	ble lbl_802AF240
/* 802AF1EC  3B A4 00 65 */	addi r29, r4, 0x65
/* 802AF1F0  48 00 00 50 */	b lbl_802AF240
lbl_802AF1F4:
/* 802AF1F4  C0 02 BF 98 */	lfs f0, lit_3372(r2)
/* 802AF1F8  D0 1C 00 74 */	stfs f0, 0x74(r28)
/* 802AF1FC  C0 02 BF 9C */	lfs f0, lit_3373(r2)
/* 802AF200  D0 1C 00 78 */	stfs f0, 0x78(r28)
/* 802AF204  38 00 00 00 */	li r0, 0
/* 802AF208  90 1C 00 80 */	stw r0, 0x80(r28)
/* 802AF20C  D0 1C 00 7C */	stfs f0, 0x7c(r28)
lbl_802AF210:
/* 802AF210  80 7C 00 0C */	lwz r3, 0xc(r28)
/* 802AF214  28 03 00 00 */	cmplwi r3, 0
/* 802AF218  41 82 00 0C */	beq lbl_802AF224
/* 802AF21C  38 80 00 00 */	li r4, 0
/* 802AF220  4B FF 32 BD */	bl stop__8JAISoundFUl
lbl_802AF224:
/* 802AF224  C0 02 BF 98 */	lfs f0, lit_3372(r2)
/* 802AF228  D0 1C 00 64 */	stfs f0, 0x64(r28)
/* 802AF22C  C0 02 BF 9C */	lfs f0, lit_3373(r2)
/* 802AF230  D0 1C 00 68 */	stfs f0, 0x68(r28)
/* 802AF234  38 00 00 00 */	li r0, 0
/* 802AF238  90 1C 00 70 */	stw r0, 0x70(r28)
/* 802AF23C  D0 1C 00 6C */	stfs f0, 0x6c(r28)
lbl_802AF240:
/* 802AF240  80 6D 85 FC */	lwz r3, data_80450B7C(r13)
/* 802AF244  88 03 00 2C */	lbz r0, 0x2c(r3)
/* 802AF248  28 00 00 09 */	cmplwi r0, 9
/* 802AF24C  40 82 00 54 */	bne lbl_802AF2A0
/* 802AF250  80 7C 00 00 */	lwz r3, 0(r28)
/* 802AF254  28 03 00 00 */	cmplwi r3, 0
/* 802AF258  41 82 00 0C */	beq lbl_802AF264
/* 802AF25C  38 80 00 00 */	li r4, 0
/* 802AF260  4B FF 32 7D */	bl stop__8JAISoundFUl
lbl_802AF264:
/* 802AF264  2C 1F 00 00 */	cmpwi r31, 0
/* 802AF268  40 82 00 48 */	bne lbl_802AF2B0
/* 802AF26C  80 7C 00 04 */	lwz r3, 4(r28)
/* 802AF270  28 03 00 00 */	cmplwi r3, 0
/* 802AF274  41 82 00 0C */	beq lbl_802AF280
/* 802AF278  38 80 00 00 */	li r4, 0
/* 802AF27C  4B FF 32 61 */	bl stop__8JAISoundFUl
lbl_802AF280:
/* 802AF280  C0 02 BF 98 */	lfs f0, lit_3372(r2)
/* 802AF284  D0 1C 00 14 */	stfs f0, 0x14(r28)
/* 802AF288  C0 02 BF 9C */	lfs f0, lit_3373(r2)
/* 802AF28C  D0 1C 00 18 */	stfs f0, 0x18(r28)
/* 802AF290  38 00 00 00 */	li r0, 0
/* 802AF294  90 1C 00 20 */	stw r0, 0x20(r28)
/* 802AF298  D0 1C 00 1C */	stfs f0, 0x1c(r28)
/* 802AF29C  48 00 00 14 */	b lbl_802AF2B0
lbl_802AF2A0:
/* 802AF2A0  7F 83 E3 78 */	mr r3, r28
/* 802AF2A4  38 80 00 00 */	li r4, 0
/* 802AF2A8  7F E5 FB 78 */	mr r5, r31
/* 802AF2AC  48 00 01 5D */	bl bgmStop__8Z2SeqMgrFUll
lbl_802AF2B0:
/* 802AF2B0  3C 1D FF 00 */	addis r0, r29, 0xff00
/* 802AF2B4  28 00 00 00 */	cmplwi r0, 0
/* 802AF2B8  41 82 00 0C */	beq lbl_802AF2C4
/* 802AF2BC  28 00 00 01 */	cmplwi r0, 1
/* 802AF2C0  40 82 00 10 */	bne lbl_802AF2D0
lbl_802AF2C4:
/* 802AF2C4  7F 83 E3 78 */	mr r3, r28
/* 802AF2C8  48 00 61 95 */	bl fieldBgmStart__8Z2SeqMgrFv
/* 802AF2CC  48 00 00 30 */	b lbl_802AF2FC
lbl_802AF2D0:
/* 802AF2D0  93 A1 00 0C */	stw r29, 0xc(r1)
/* 802AF2D4  80 6D 85 E0 */	lwz r3, data_80450B60(r13)
/* 802AF2D8  38 81 00 0C */	addi r4, r1, 0xc
/* 802AF2DC  7F 85 E3 78 */	mr r5, r28
/* 802AF2E0  38 C0 00 00 */	li r6, 0
/* 802AF2E4  81 83 00 00 */	lwz r12, 0(r3)
/* 802AF2E8  81 8C 00 08 */	lwz r12, 8(r12)
/* 802AF2EC  7D 89 03 A6 */	mtctr r12
/* 802AF2F0  4E 80 04 21 */	bctrl 
/* 802AF2F4  38 00 00 FF */	li r0, 0xff
/* 802AF2F8  98 1C 00 BC */	stb r0, 0xbc(r28)
lbl_802AF2FC:
/* 802AF2FC  2C 1F 00 00 */	cmpwi r31, 0
/* 802AF300  40 82 00 6C */	bne lbl_802AF36C
/* 802AF304  28 1E 00 00 */	cmplwi r30, 0
/* 802AF308  41 82 00 64 */	beq lbl_802AF36C
/* 802AF30C  C0 22 BF 9C */	lfs f1, lit_3373(r2)
/* 802AF310  D0 3C 00 14 */	stfs f1, 0x14(r28)
/* 802AF314  41 82 00 40 */	beq lbl_802AF354
/* 802AF318  C0 1C 00 14 */	lfs f0, 0x14(r28)
/* 802AF31C  93 DC 00 20 */	stw r30, 0x20(r28)
/* 802AF320  C0 62 BF 98 */	lfs f3, lit_3372(r2)
/* 802AF324  EC 43 00 28 */	fsubs f2, f3, f0
/* 802AF328  80 1C 00 20 */	lwz r0, 0x20(r28)
/* 802AF32C  C8 22 BF A8 */	lfd f1, lit_3561(r2)
/* 802AF330  90 01 00 1C */	stw r0, 0x1c(r1)
/* 802AF334  3C 00 43 30 */	lis r0, 0x4330
/* 802AF338  90 01 00 18 */	stw r0, 0x18(r1)
/* 802AF33C  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 802AF340  EC 00 08 28 */	fsubs f0, f0, f1
/* 802AF344  EC 02 00 24 */	fdivs f0, f2, f0
/* 802AF348  D0 1C 00 18 */	stfs f0, 0x18(r28)
/* 802AF34C  D0 7C 00 1C */	stfs f3, 0x1c(r28)
/* 802AF350  48 00 00 1C */	b lbl_802AF36C
lbl_802AF354:
/* 802AF354  C0 02 BF 98 */	lfs f0, lit_3372(r2)
/* 802AF358  D0 1C 00 14 */	stfs f0, 0x14(r28)
/* 802AF35C  D0 3C 00 18 */	stfs f1, 0x18(r28)
/* 802AF360  38 00 00 00 */	li r0, 0
/* 802AF364  90 1C 00 20 */	stw r0, 0x20(r28)
/* 802AF368  D0 3C 00 1C */	stfs f1, 0x1c(r28)
lbl_802AF36C:
/* 802AF36C  3C 1D FF 00 */	addis r0, r29, 0xff00
/* 802AF370  28 00 00 4D */	cmplwi r0, 0x4d
/* 802AF374  41 82 00 1C */	beq lbl_802AF390
/* 802AF378  28 00 00 04 */	cmplwi r0, 4
/* 802AF37C  41 82 00 14 */	beq lbl_802AF390
/* 802AF380  28 00 00 87 */	cmplwi r0, 0x87
/* 802AF384  41 82 00 0C */	beq lbl_802AF390
/* 802AF388  28 00 00 05 */	cmplwi r0, 5
/* 802AF38C  40 82 00 10 */	bne lbl_802AF39C
lbl_802AF390:
/* 802AF390  7F 83 E3 78 */	mr r3, r28
/* 802AF394  38 80 00 00 */	li r4, 0
/* 802AF398  48 00 0B F5 */	bl changeBgmStatus__8Z2SeqMgrFl
lbl_802AF39C:
/* 802AF39C  88 1C 00 D0 */	lbz r0, 0xd0(r28)
/* 802AF3A0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 802AF3A4  41 82 00 30 */	beq lbl_802AF3D4
/* 802AF3A8  80 6D 85 FC */	lwz r3, data_80450B7C(r13)
/* 802AF3AC  48 00 73 89 */	bl checkDayTime__11Z2StatusMgrFv
/* 802AF3B0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802AF3B4  40 82 00 20 */	bne lbl_802AF3D4
/* 802AF3B8  C0 02 BF 9C */	lfs f0, lit_3373(r2)
/* 802AF3BC  D0 1C 00 A4 */	stfs f0, 0xa4(r28)
/* 802AF3C0  D0 1C 00 A8 */	stfs f0, 0xa8(r28)
/* 802AF3C4  38 00 00 00 */	li r0, 0
/* 802AF3C8  90 1C 00 B0 */	stw r0, 0xb0(r28)
/* 802AF3CC  D0 1C 00 AC */	stfs f0, 0xac(r28)
/* 802AF3D0  48 00 00 20 */	b lbl_802AF3F0
lbl_802AF3D4:
/* 802AF3D4  C0 02 BF 98 */	lfs f0, lit_3372(r2)
/* 802AF3D8  D0 1C 00 A4 */	stfs f0, 0xa4(r28)
/* 802AF3DC  C0 02 BF 9C */	lfs f0, lit_3373(r2)
/* 802AF3E0  D0 1C 00 A8 */	stfs f0, 0xa8(r28)
/* 802AF3E4  38 00 00 00 */	li r0, 0
/* 802AF3E8  90 1C 00 B0 */	stw r0, 0xb0(r28)
/* 802AF3EC  D0 1C 00 AC */	stfs f0, 0xac(r28)
lbl_802AF3F0:
/* 802AF3F0  39 61 00 30 */	addi r11, r1, 0x30
/* 802AF3F4  48 0B 2E 31 */	bl _restgpr_28
/* 802AF3F8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802AF3FC  7C 08 03 A6 */	mtlr r0
/* 802AF400  38 21 00 30 */	addi r1, r1, 0x30
/* 802AF404  4E 80 00 20 */	blr 
