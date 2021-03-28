lbl_80031AD0:
/* 80031AD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80031AD4  7C 08 02 A6 */	mflr r0
/* 80031AD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80031ADC  80 6D 88 38 */	lwz r3, m_myObj__6daMP_c(r13)
/* 80031AE0  28 03 00 00 */	cmplwi r3, 0
/* 80031AE4  40 82 00 18 */	bne lbl_80031AFC
/* 80031AE8  80 0D 88 BC */	lwz r0, m_status__7dDemo_c(r13)
/* 80031AEC  60 00 00 01 */	ori r0, r0, 1
/* 80031AF0  90 0D 88 BC */	stw r0, m_status__7dDemo_c(r13)
/* 80031AF4  38 60 00 00 */	li r3, 0
/* 80031AF8  48 00 00 1C */	b lbl_80031B14
lbl_80031AFC:
/* 80031AFC  80 0D 88 BC */	lwz r0, m_status__7dDemo_c(r13)
/* 80031B00  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80031B04  90 0D 88 BC */	stw r0, m_status__7dDemo_c(r13)
/* 80031B08  81 83 05 74 */	lwz r12, 0x574(r3)
/* 80031B0C  7D 89 03 A6 */	mtctr r12
/* 80031B10  4E 80 04 21 */	bctrl 
lbl_80031B14:
/* 80031B14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80031B18  7C 08 03 A6 */	mtlr r0
/* 80031B1C  38 21 00 10 */	addi r1, r1, 0x10
/* 80031B20  4E 80 00 20 */	blr 
