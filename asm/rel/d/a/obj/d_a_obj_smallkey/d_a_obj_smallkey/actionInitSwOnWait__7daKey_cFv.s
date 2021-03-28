lbl_80CDAD28:
/* 80CDAD28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CDAD2C  7C 08 02 A6 */	mflr r0
/* 80CDAD30  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CDAD34  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CDAD38  7C 7F 1B 78 */	mr r31, r3
/* 80CDAD3C  80 03 05 5C */	lwz r0, 0x55c(r3)
/* 80CDAD40  54 00 07 34 */	rlwinm r0, r0, 0, 0x1c, 0x1a
/* 80CDAD44  90 03 05 5C */	stw r0, 0x55c(r3)
/* 80CDAD48  80 03 07 F8 */	lwz r0, 0x7f8(r3)
/* 80CDAD4C  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80CDAD50  90 03 07 F8 */	stw r0, 0x7f8(r3)
/* 80CDAD54  80 03 08 0C */	lwz r0, 0x80c(r3)
/* 80CDAD58  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80CDAD5C  90 03 08 0C */	stw r0, 0x80c(r3)
/* 80CDAD60  4B 35 CD 04 */	b hide__12daItemBase_cFv
/* 80CDAD64  A0 1F 09 3A */	lhz r0, 0x93a(r31)
/* 80CDAD68  54 03 06 BE */	clrlwi r3, r0, 0x1a
/* 80CDAD6C  28 03 00 3F */	cmplwi r3, 0x3f
/* 80CDAD70  40 82 00 10 */	bne lbl_80CDAD80
/* 80CDAD74  38 00 00 0F */	li r0, 0xf
/* 80CDAD78  98 1F 09 35 */	stb r0, 0x935(r31)
/* 80CDAD7C  48 00 00 0C */	b lbl_80CDAD88
lbl_80CDAD80:
/* 80CDAD80  38 03 00 01 */	addi r0, r3, 1
/* 80CDAD84  98 1F 09 35 */	stb r0, 0x935(r31)
lbl_80CDAD88:
/* 80CDAD88  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80CDAD8C  54 04 86 3E */	rlwinm r4, r0, 0x10, 0x18, 0x1f
/* 80CDAD90  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CDAD94  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CDAD98  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80CDAD9C  7C 05 07 74 */	extsb r5, r0
/* 80CDADA0  4B 35 A5 C0 */	b isSwitch__10dSv_info_cCFii
/* 80CDADA4  2C 03 00 00 */	cmpwi r3, 0
/* 80CDADA8  41 82 00 0C */	beq lbl_80CDADB4
/* 80CDADAC  38 00 00 00 */	li r0, 0
/* 80CDADB0  98 1F 09 35 */	stb r0, 0x935(r31)
lbl_80CDADB4:
/* 80CDADB4  38 00 00 05 */	li r0, 5
/* 80CDADB8  98 1F 09 34 */	stb r0, 0x934(r31)
/* 80CDADBC  38 60 00 01 */	li r3, 1
/* 80CDADC0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CDADC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CDADC8  7C 08 03 A6 */	mtlr r0
/* 80CDADCC  38 21 00 10 */	addi r1, r1, 0x10
/* 80CDADD0  4E 80 00 20 */	blr 
