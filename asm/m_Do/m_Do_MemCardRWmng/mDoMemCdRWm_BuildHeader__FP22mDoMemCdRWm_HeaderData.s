lbl_8001787C:
/* 8001787C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80017880  7C 08 02 A6 */	mflr r0
/* 80017884  90 01 00 44 */	stw r0, 0x44(r1)
/* 80017888  39 61 00 40 */	addi r11, r1, 0x40
/* 8001788C  48 34 A9 4D */	bl _savegpr_28
/* 80017890  7C 7F 1B 78 */	mr r31, r3
/* 80017894  38 7F 24 00 */	addi r3, r31, 0x2400
/* 80017898  38 80 00 20 */	li r4, 0x20
/* 8001789C  3C A0 80 37 */	lis r5, m_Do_m_Do_MemCardRWmng__stringBase0@ha /* 0x80374408@ha */
/* 800178A0  38 A5 44 08 */	addi r5, r5, m_Do_m_Do_MemCardRWmng__stringBase0@l /* 0x80374408@l */
/* 800178A4  4C C6 31 82 */	crclr 6
/* 800178A8  48 34 ED 15 */	bl snprintf
/* 800178AC  48 32 AE 51 */	bl OSGetTime
/* 800178B0  38 A1 00 08 */	addi r5, r1, 8
/* 800178B4  48 32 B0 C1 */	bl OSTicksToCalendarTime
/* 800178B8  38 7F 24 20 */	addi r3, r31, 0x2420
/* 800178BC  38 80 00 20 */	li r4, 0x20
/* 800178C0  3C A0 80 37 */	lis r5, m_Do_m_Do_MemCardRWmng__stringBase0@ha /* 0x80374408@ha */
/* 800178C4  38 A5 44 08 */	addi r5, r5, m_Do_m_Do_MemCardRWmng__stringBase0@l /* 0x80374408@l */
/* 800178C8  38 A5 00 19 */	addi r5, r5, 0x19
/* 800178CC  80 C1 00 18 */	lwz r6, 0x18(r1)
/* 800178D0  38 C6 00 01 */	addi r6, r6, 1
/* 800178D4  80 E1 00 14 */	lwz r7, 0x14(r1)
/* 800178D8  4C C6 31 82 */	crclr 6
/* 800178DC  48 34 EC E1 */	bl snprintf
/* 800178E0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800178E4  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800178E8  80 7C 5C F0 */	lwz r3, 0x5cf0(r28)
/* 800178EC  3C 80 80 37 */	lis r4, m_Do_m_Do_MemCardRWmng__stringBase0@ha /* 0x80374408@ha */
/* 800178F0  38 84 44 08 */	addi r4, r4, m_Do_m_Do_MemCardRWmng__stringBase0@l /* 0x80374408@l */
/* 800178F4  38 84 00 29 */	addi r4, r4, 0x29
/* 800178F8  81 83 00 00 */	lwz r12, 0(r3)
/* 800178FC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80017900  7D 89 03 A6 */	mtctr r12
/* 80017904  4E 80 04 21 */	bctrl 
/* 80017908  7C 7D 1B 78 */	mr r29, r3
/* 8001790C  80 7C 5C F0 */	lwz r3, 0x5cf0(r28)
/* 80017910  3C 80 80 37 */	lis r4, m_Do_m_Do_MemCardRWmng__stringBase0@ha /* 0x80374408@ha */
/* 80017914  38 84 44 08 */	addi r4, r4, m_Do_m_Do_MemCardRWmng__stringBase0@l /* 0x80374408@l */
/* 80017918  38 84 00 3E */	addi r4, r4, 0x3e
/* 8001791C  81 83 00 00 */	lwz r12, 0(r3)
/* 80017920  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80017924  7D 89 03 A6 */	mtctr r12
/* 80017928  4E 80 04 21 */	bctrl 
/* 8001792C  7C 7E 1B 78 */	mr r30, r3
/* 80017930  7F E3 FB 78 */	mr r3, r31
/* 80017934  80 1D 00 1C */	lwz r0, 0x1c(r29)
/* 80017938  7C 9D 02 14 */	add r4, r29, r0
/* 8001793C  A0 1D 00 0A */	lhz r0, 0xa(r29)
/* 80017940  54 05 08 3C */	slwi r5, r0, 1
/* 80017944  38 A5 0C 00 */	addi r5, r5, 0xc00
/* 80017948  4B FE BB F9 */	bl memcpy
/* 8001794C  38 7F 0E 00 */	addi r3, r31, 0xe00
/* 80017950  80 1E 00 1C */	lwz r0, 0x1c(r30)
/* 80017954  7C 9E 02 14 */	add r4, r30, r0
/* 80017958  38 A0 04 00 */	li r5, 0x400
/* 8001795C  4B FE BB E5 */	bl memcpy
/* 80017960  38 7F 12 00 */	addi r3, r31, 0x1200
/* 80017964  80 1E 00 1C */	lwz r0, 0x1c(r30)
/* 80017968  7C 9E 02 14 */	add r4, r30, r0
/* 8001796C  38 A0 04 00 */	li r5, 0x400
/* 80017970  4B FE BB D1 */	bl memcpy
/* 80017974  38 7F 16 00 */	addi r3, r31, 0x1600
/* 80017978  80 1E 00 1C */	lwz r0, 0x1c(r30)
/* 8001797C  7C 9E 02 14 */	add r4, r30, r0
/* 80017980  38 A0 04 00 */	li r5, 0x400
/* 80017984  4B FE BB BD */	bl memcpy
/* 80017988  38 7F 1A 00 */	addi r3, r31, 0x1a00
/* 8001798C  80 1E 00 1C */	lwz r0, 0x1c(r30)
/* 80017990  7C 9E 02 14 */	add r4, r30, r0
/* 80017994  38 A0 04 00 */	li r5, 0x400
/* 80017998  4B FE BB A9 */	bl memcpy
/* 8001799C  38 7F 1E 00 */	addi r3, r31, 0x1e00
/* 800179A0  80 1E 00 1C */	lwz r0, 0x1c(r30)
/* 800179A4  7C 9E 02 14 */	add r4, r30, r0
/* 800179A8  A0 1E 00 0A */	lhz r0, 0xa(r30)
/* 800179AC  54 05 08 3C */	slwi r5, r0, 1
/* 800179B0  38 A5 04 00 */	addi r5, r5, 0x400
/* 800179B4  4B FE BB 8D */	bl memcpy
/* 800179B8  80 7C 5C F0 */	lwz r3, 0x5cf0(r28)
/* 800179BC  81 83 00 00 */	lwz r12, 0(r3)
/* 800179C0  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 800179C4  7D 89 03 A6 */	mtctr r12
/* 800179C8  4E 80 04 21 */	bctrl 
/* 800179CC  39 61 00 40 */	addi r11, r1, 0x40
/* 800179D0  48 34 A8 55 */	bl _restgpr_28
/* 800179D4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 800179D8  7C 08 03 A6 */	mtlr r0
/* 800179DC  38 21 00 40 */	addi r1, r1, 0x40
/* 800179E0  4E 80 00 20 */	blr 
