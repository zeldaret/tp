lbl_8033DBCC:
/* 8033DBCC  7C 08 02 A6 */	mflr r0
/* 8033DBD0  90 01 00 04 */	stw r0, 4(r1)
/* 8033DBD4  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 8033DBD8  93 E1 00 24 */	stw r31, 0x24(r1)
/* 8033DBDC  93 C1 00 20 */	stw r30, 0x20(r1)
/* 8033DBE0  93 A1 00 1C */	stw r29, 0x1c(r1)
/* 8033DBE4  7C 9E 23 78 */	mr r30, r4
/* 8033DBE8  3C 60 CC 00 */	lis r3, 0xCC00 /* 0xCC003000@ha */
/* 8033DBEC  83 E3 30 00 */	lwz r31, 0x3000(r3)  /* 0xCC003000@l */
/* 8033DBF0  57 FF 04 1C */	rlwinm r31, r31, 0, 0x10, 0xe
/* 8033DBF4  28 1F 00 00 */	cmplwi r31, 0
/* 8033DBF8  41 82 00 18 */	beq lbl_8033DC10
/* 8033DBFC  38 63 30 00 */	addi r3, r3, 0x3000
/* 8033DC00  80 03 00 04 */	lwz r0, 4(r3)
/* 8033DC04  7F E0 00 38 */	and r0, r31, r0
/* 8033DC08  28 00 00 00 */	cmplwi r0, 0
/* 8033DC0C  40 82 00 0C */	bne lbl_8033DC18
lbl_8033DC10:
/* 8033DC10  7F C3 F3 78 */	mr r3, r30
/* 8033DC14  4B FF E3 0D */	bl OSLoadContext
lbl_8033DC18:
/* 8033DC18  57 E0 06 30 */	rlwinm r0, r31, 0, 0x18, 0x18
/* 8033DC1C  28 00 00 00 */	cmplwi r0, 0
/* 8033DC20  38 00 00 00 */	li r0, 0
/* 8033DC24  41 82 00 60 */	beq lbl_8033DC84
/* 8033DC28  3C 60 CC 00 */	lis r3, 0xCC00 /* 0xCC004000@ha */
/* 8033DC2C  38 63 40 00 */	addi r3, r3, 0x4000 /* 0xCC004000@l */
/* 8033DC30  A0 83 00 1E */	lhz r4, 0x1e(r3)
/* 8033DC34  54 83 07 FE */	clrlwi r3, r4, 0x1f
/* 8033DC38  28 03 00 00 */	cmplwi r3, 0
/* 8033DC3C  41 82 00 08 */	beq lbl_8033DC44
/* 8033DC40  64 00 80 00 */	oris r0, r0, 0x8000
lbl_8033DC44:
/* 8033DC44  54 83 07 BC */	rlwinm r3, r4, 0, 0x1e, 0x1e
/* 8033DC48  28 03 00 00 */	cmplwi r3, 0
/* 8033DC4C  41 82 00 08 */	beq lbl_8033DC54
/* 8033DC50  64 00 40 00 */	oris r0, r0, 0x4000
lbl_8033DC54:
/* 8033DC54  54 83 07 7A */	rlwinm r3, r4, 0, 0x1d, 0x1d
/* 8033DC58  28 03 00 00 */	cmplwi r3, 0
/* 8033DC5C  41 82 00 08 */	beq lbl_8033DC64
/* 8033DC60  64 00 20 00 */	oris r0, r0, 0x2000
lbl_8033DC64:
/* 8033DC64  54 83 07 38 */	rlwinm r3, r4, 0, 0x1c, 0x1c
/* 8033DC68  28 03 00 00 */	cmplwi r3, 0
/* 8033DC6C  41 82 00 08 */	beq lbl_8033DC74
/* 8033DC70  64 00 10 00 */	oris r0, r0, 0x1000
lbl_8033DC74:
/* 8033DC74  54 83 06 F6 */	rlwinm r3, r4, 0, 0x1b, 0x1b
/* 8033DC78  28 03 00 00 */	cmplwi r3, 0
/* 8033DC7C  41 82 00 08 */	beq lbl_8033DC84
/* 8033DC80  64 00 08 00 */	oris r0, r0, 0x800
lbl_8033DC84:
/* 8033DC84  57 E3 06 72 */	rlwinm r3, r31, 0, 0x19, 0x19
/* 8033DC88  28 03 00 00 */	cmplwi r3, 0
/* 8033DC8C  41 82 00 40 */	beq lbl_8033DCCC
/* 8033DC90  3C 60 CC 00 */	lis r3, 0xCC00 /* 0xCC005000@ha */
/* 8033DC94  38 63 50 00 */	addi r3, r3, 0x5000 /* 0xCC005000@l */
/* 8033DC98  A0 83 00 0A */	lhz r4, 0xa(r3)
/* 8033DC9C  54 83 07 38 */	rlwinm r3, r4, 0, 0x1c, 0x1c
/* 8033DCA0  28 03 00 00 */	cmplwi r3, 0
/* 8033DCA4  41 82 00 08 */	beq lbl_8033DCAC
/* 8033DCA8  64 00 04 00 */	oris r0, r0, 0x400
lbl_8033DCAC:
/* 8033DCAC  54 83 06 B4 */	rlwinm r3, r4, 0, 0x1a, 0x1a
/* 8033DCB0  28 03 00 00 */	cmplwi r3, 0
/* 8033DCB4  41 82 00 08 */	beq lbl_8033DCBC
/* 8033DCB8  64 00 02 00 */	oris r0, r0, 0x200
lbl_8033DCBC:
/* 8033DCBC  54 83 06 30 */	rlwinm r3, r4, 0, 0x18, 0x18
/* 8033DCC0  28 03 00 00 */	cmplwi r3, 0
/* 8033DCC4  41 82 00 08 */	beq lbl_8033DCCC
/* 8033DCC8  64 00 01 00 */	oris r0, r0, 0x100
lbl_8033DCCC:
/* 8033DCCC  57 E3 06 B4 */	rlwinm r3, r31, 0, 0x1a, 0x1a
/* 8033DCD0  28 03 00 00 */	cmplwi r3, 0
/* 8033DCD4  41 82 00 1C */	beq lbl_8033DCF0
/* 8033DCD8  3C 60 CC 00 */	lis r3, 0xCC00 /* 0xCC006C00@ha */
/* 8033DCDC  80 63 6C 00 */	lwz r3, 0x6C00(r3)  /* 0xCC006C00@l */
/* 8033DCE0  54 63 07 38 */	rlwinm r3, r3, 0, 0x1c, 0x1c
/* 8033DCE4  28 03 00 00 */	cmplwi r3, 0
/* 8033DCE8  41 82 00 08 */	beq lbl_8033DCF0
/* 8033DCEC  64 00 00 80 */	oris r0, r0, 0x80
lbl_8033DCF0:
/* 8033DCF0  57 E3 06 F6 */	rlwinm r3, r31, 0, 0x1b, 0x1b
/* 8033DCF4  28 03 00 00 */	cmplwi r3, 0
/* 8033DCF8  41 82 00 A4 */	beq lbl_8033DD9C
/* 8033DCFC  3C 60 CC 00 */	lis r3, 0xCC00 /* 0xCC006800@ha */
/* 8033DD00  80 83 68 00 */	lwz r4, 0x6800(r3)  /* 0xCC006800@l */
/* 8033DD04  54 83 07 BC */	rlwinm r3, r4, 0, 0x1e, 0x1e
/* 8033DD08  28 03 00 00 */	cmplwi r3, 0
/* 8033DD0C  41 82 00 08 */	beq lbl_8033DD14
/* 8033DD10  64 00 00 40 */	oris r0, r0, 0x40
lbl_8033DD14:
/* 8033DD14  54 83 07 38 */	rlwinm r3, r4, 0, 0x1c, 0x1c
/* 8033DD18  28 03 00 00 */	cmplwi r3, 0
/* 8033DD1C  41 82 00 08 */	beq lbl_8033DD24
/* 8033DD20  64 00 00 20 */	oris r0, r0, 0x20
lbl_8033DD24:
/* 8033DD24  54 83 05 28 */	rlwinm r3, r4, 0, 0x14, 0x14
/* 8033DD28  28 03 00 00 */	cmplwi r3, 0
/* 8033DD2C  41 82 00 08 */	beq lbl_8033DD34
/* 8033DD30  64 00 00 10 */	oris r0, r0, 0x10
lbl_8033DD34:
/* 8033DD34  3C 60 CC 00 */	lis r3, 0xCC00 /* 0xCC006800@ha */
/* 8033DD38  38 63 68 00 */	addi r3, r3, 0x6800 /* 0xCC006800@l */
/* 8033DD3C  80 83 00 14 */	lwz r4, 0x14(r3)
/* 8033DD40  54 83 07 BC */	rlwinm r3, r4, 0, 0x1e, 0x1e
/* 8033DD44  28 03 00 00 */	cmplwi r3, 0
/* 8033DD48  41 82 00 08 */	beq lbl_8033DD50
/* 8033DD4C  64 00 00 08 */	oris r0, r0, 8
lbl_8033DD50:
/* 8033DD50  54 83 07 38 */	rlwinm r3, r4, 0, 0x1c, 0x1c
/* 8033DD54  28 03 00 00 */	cmplwi r3, 0
/* 8033DD58  41 82 00 08 */	beq lbl_8033DD60
/* 8033DD5C  64 00 00 04 */	oris r0, r0, 4
lbl_8033DD60:
/* 8033DD60  54 83 05 28 */	rlwinm r3, r4, 0, 0x14, 0x14
/* 8033DD64  28 03 00 00 */	cmplwi r3, 0
/* 8033DD68  41 82 00 08 */	beq lbl_8033DD70
/* 8033DD6C  64 00 00 02 */	oris r0, r0, 2
lbl_8033DD70:
/* 8033DD70  3C 60 CC 00 */	lis r3, 0xCC00 /* 0xCC006800@ha */
/* 8033DD74  38 63 68 00 */	addi r3, r3, 0x6800 /* 0xCC006800@l */
/* 8033DD78  80 83 00 28 */	lwz r4, 0x28(r3)
/* 8033DD7C  54 83 07 BC */	rlwinm r3, r4, 0, 0x1e, 0x1e
/* 8033DD80  28 03 00 00 */	cmplwi r3, 0
/* 8033DD84  41 82 00 08 */	beq lbl_8033DD8C
/* 8033DD88  64 00 00 01 */	oris r0, r0, 1
lbl_8033DD8C:
/* 8033DD8C  54 83 07 38 */	rlwinm r3, r4, 0, 0x1c, 0x1c
/* 8033DD90  28 03 00 00 */	cmplwi r3, 0
/* 8033DD94  41 82 00 08 */	beq lbl_8033DD9C
/* 8033DD98  60 00 80 00 */	ori r0, r0, 0x8000
lbl_8033DD9C:
/* 8033DD9C  57 E3 04 A4 */	rlwinm r3, r31, 0, 0x12, 0x12
/* 8033DDA0  28 03 00 00 */	cmplwi r3, 0
/* 8033DDA4  41 82 00 08 */	beq lbl_8033DDAC
/* 8033DDA8  60 00 00 20 */	ori r0, r0, 0x20
lbl_8033DDAC:
/* 8033DDAC  57 E3 04 E6 */	rlwinm r3, r31, 0, 0x13, 0x13
/* 8033DDB0  28 03 00 00 */	cmplwi r3, 0
/* 8033DDB4  41 82 00 08 */	beq lbl_8033DDBC
/* 8033DDB8  60 00 00 40 */	ori r0, r0, 0x40
lbl_8033DDBC:
/* 8033DDBC  57 E3 05 6A */	rlwinm r3, r31, 0, 0x15, 0x15
/* 8033DDC0  28 03 00 00 */	cmplwi r3, 0
/* 8033DDC4  41 82 00 08 */	beq lbl_8033DDCC
/* 8033DDC8  60 00 10 00 */	ori r0, r0, 0x1000
lbl_8033DDCC:
/* 8033DDCC  57 E3 05 AC */	rlwinm r3, r31, 0, 0x16, 0x16
/* 8033DDD0  28 03 00 00 */	cmplwi r3, 0
/* 8033DDD4  41 82 00 08 */	beq lbl_8033DDDC
/* 8033DDD8  60 00 20 00 */	ori r0, r0, 0x2000
lbl_8033DDDC:
/* 8033DDDC  57 E3 05 EE */	rlwinm r3, r31, 0, 0x17, 0x17
/* 8033DDE0  28 03 00 00 */	cmplwi r3, 0
/* 8033DDE4  41 82 00 08 */	beq lbl_8033DDEC
/* 8033DDE8  60 00 00 80 */	ori r0, r0, 0x80
lbl_8033DDEC:
/* 8033DDEC  57 E3 07 38 */	rlwinm r3, r31, 0, 0x1c, 0x1c
/* 8033DDF0  28 03 00 00 */	cmplwi r3, 0
/* 8033DDF4  41 82 00 08 */	beq lbl_8033DDFC
/* 8033DDF8  60 00 08 00 */	ori r0, r0, 0x800
lbl_8033DDFC:
/* 8033DDFC  57 E3 07 7A */	rlwinm r3, r31, 0, 0x1d, 0x1d
/* 8033DE00  28 03 00 00 */	cmplwi r3, 0
/* 8033DE04  41 82 00 08 */	beq lbl_8033DE0C
/* 8033DE08  60 00 04 00 */	ori r0, r0, 0x400
lbl_8033DE0C:
/* 8033DE0C  57 E3 07 BC */	rlwinm r3, r31, 0, 0x1e, 0x1e
/* 8033DE10  28 03 00 00 */	cmplwi r3, 0
/* 8033DE14  41 82 00 08 */	beq lbl_8033DE1C
/* 8033DE18  60 00 02 00 */	ori r0, r0, 0x200
lbl_8033DE1C:
/* 8033DE1C  57 E3 05 28 */	rlwinm r3, r31, 0, 0x14, 0x14
/* 8033DE20  28 03 00 00 */	cmplwi r3, 0
/* 8033DE24  41 82 00 08 */	beq lbl_8033DE2C
/* 8033DE28  60 00 40 00 */	ori r0, r0, 0x4000
lbl_8033DE2C:
/* 8033DE2C  57 E3 07 FE */	clrlwi r3, r31, 0x1f
/* 8033DE30  28 03 00 00 */	cmplwi r3, 0
/* 8033DE34  41 82 00 08 */	beq lbl_8033DE3C
/* 8033DE38  60 00 01 00 */	ori r0, r0, 0x100
lbl_8033DE3C:
/* 8033DE3C  3C 60 80 00 */	lis r3, 0x8000 /* 0x800000C4@ha */
/* 8033DE40  80 83 00 C4 */	lwz r4, 0x00C4(r3)  /* 0x800000C4@l */
/* 8033DE44  80 63 00 C8 */	lwz r3, 0xc8(r3)
/* 8033DE48  7C 83 1B 78 */	or r3, r4, r3
/* 8033DE4C  7C 04 18 78 */	andc r4, r0, r3
/* 8033DE50  28 04 00 00 */	cmplwi r4, 0
/* 8033DE54  41 82 00 98 */	beq lbl_8033DEEC
/* 8033DE58  3C 60 80 3D */	lis r3, InterruptPrioTable@ha /* 0x803D0758@ha */
/* 8033DE5C  38 03 07 58 */	addi r0, r3, InterruptPrioTable@l /* 0x803D0758@l */
/* 8033DE60  7C 03 03 78 */	mr r3, r0
/* 8033DE64  48 00 00 04 */	b lbl_8033DE68
lbl_8033DE68:
/* 8033DE68  48 00 00 04 */	b lbl_8033DE6C
lbl_8033DE6C:
/* 8033DE6C  80 03 00 00 */	lwz r0, 0(r3)
/* 8033DE70  7C 80 00 38 */	and r0, r4, r0
/* 8033DE74  28 00 00 00 */	cmplwi r0, 0
/* 8033DE78  41 82 00 10 */	beq lbl_8033DE88
/* 8033DE7C  7C 00 00 34 */	cntlzw r0, r0
/* 8033DE80  7C 1D 07 34 */	extsh r29, r0
/* 8033DE84  48 00 00 0C */	b lbl_8033DE90
lbl_8033DE88:
/* 8033DE88  38 63 00 04 */	addi r3, r3, 4
/* 8033DE8C  4B FF FF E0 */	b lbl_8033DE6C
lbl_8033DE90:
/* 8033DE90  80 6D 90 F0 */	lwz r3, InterruptHandlerTable(r13)
/* 8033DE94  57 A0 10 3A */	slwi r0, r29, 2
/* 8033DE98  7F E3 00 2E */	lwzx r31, r3, r0
/* 8033DE9C  28 1F 00 00 */	cmplwi r31, 0
/* 8033DEA0  41 82 00 4C */	beq lbl_8033DEEC
/* 8033DEA4  2C 1D 00 04 */	cmpwi r29, 4
/* 8033DEA8  40 81 00 1C */	ble lbl_8033DEC4
/* 8033DEAC  B3 AD 90 F8 */	sth r29, __OSLastInterrupt(r13)
/* 8033DEB0  48 00 48 4D */	bl OSGetTime
/* 8033DEB4  90 8D 91 04 */	stw r4, data_80451684(r13)
/* 8033DEB8  90 6D 91 00 */	stw r3, __OSLastInterruptTime(r13)
/* 8033DEBC  80 1E 01 98 */	lwz r0, 0x198(r30)
/* 8033DEC0  90 0D 90 F4 */	stw r0, __OSLastInterruptSrr0(r13)
lbl_8033DEC4:
/* 8033DEC4  48 00 2E 01 */	bl OSDisableScheduler
/* 8033DEC8  7F A3 EB 78 */	mr r3, r29
/* 8033DECC  7F C4 F3 78 */	mr r4, r30
/* 8033DED0  7F EC FB 78 */	mr r12, r31
/* 8033DED4  7D 88 03 A6 */	mtlr r12
/* 8033DED8  4E 80 00 21 */	blrl 
/* 8033DEDC  48 00 2E 29 */	bl OSEnableScheduler
/* 8033DEE0  48 00 33 41 */	bl __OSReschedule
/* 8033DEE4  7F C3 F3 78 */	mr r3, r30
/* 8033DEE8  4B FF E0 39 */	bl OSLoadContext
lbl_8033DEEC:
/* 8033DEEC  7F C3 F3 78 */	mr r3, r30
/* 8033DEF0  4B FF E0 31 */	bl OSLoadContext
/* 8033DEF4  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8033DEF8  83 E1 00 24 */	lwz r31, 0x24(r1)
/* 8033DEFC  83 C1 00 20 */	lwz r30, 0x20(r1)
/* 8033DF00  83 A1 00 1C */	lwz r29, 0x1c(r1)
/* 8033DF04  38 21 00 28 */	addi r1, r1, 0x28
/* 8033DF08  7C 08 03 A6 */	mtlr r0
/* 8033DF0C  4E 80 00 20 */	blr 
