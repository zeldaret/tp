lbl_80017E30:
/* 80017E30  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80017E34  7C 08 02 A6 */	mflr r0
/* 80017E38  90 01 00 34 */	stw r0, 0x34(r1)
/* 80017E3C  39 61 00 30 */	addi r11, r1, 0x30
/* 80017E40  48 34 A3 85 */	bl _savegpr_23
/* 80017E44  80 6D 86 AC */	lwz r3, zeldaHeap(r13)
/* 80017E48  7C 7F 1B 78 */	mr r31, r3
/* 80017E4C  83 CD 86 A8 */	lwz r30, gameHeap(r13)
/* 80017E50  83 AD 86 B4 */	lwz r29, archiveHeap(r13)
/* 80017E54  48 2B 68 D9 */	bl getFreeSize__7JKRHeapFv
/* 80017E58  7C 77 1B 78 */	mr r23, r3
/* 80017E5C  7F C3 F3 78 */	mr r3, r30
/* 80017E60  48 2B 68 CD */	bl getFreeSize__7JKRHeapFv
/* 80017E64  7C 78 1B 78 */	mr r24, r3
/* 80017E68  7F A3 EB 78 */	mr r3, r29
/* 80017E6C  48 2B 68 C1 */	bl getFreeSize__7JKRHeapFv
/* 80017E70  7C 79 1B 78 */	mr r25, r3
/* 80017E74  7F E3 FB 78 */	mr r3, r31
/* 80017E78  48 2B 69 0D */	bl getTotalFreeSize__7JKRHeapFv
/* 80017E7C  7C 7A 1B 78 */	mr r26, r3
/* 80017E80  7F C3 F3 78 */	mr r3, r30
/* 80017E84  48 2B 69 01 */	bl getTotalFreeSize__7JKRHeapFv
/* 80017E88  7C 7B 1B 78 */	mr r27, r3
/* 80017E8C  7F A3 EB 78 */	mr r3, r29
/* 80017E90  48 2B 68 F5 */	bl getTotalFreeSize__7JKRHeapFv
/* 80017E94  7C 7C 1B 78 */	mr r28, r3
/* 80017E98  3C 60 80 37 */	lis r3, m_Do_m_Do_machine_exception__stringBase0@ha
/* 80017E9C  38 63 44 60 */	addi r3, r3, m_Do_m_Do_machine_exception__stringBase0@l
/* 80017EA0  38 63 00 28 */	addi r3, r3, 0x28
/* 80017EA4  4B FF FF 65 */	bl print__FPCc
/* 80017EA8  3C 60 80 37 */	lis r3, m_Do_m_Do_machine_exception__stringBase0@ha
/* 80017EAC  38 63 44 60 */	addi r3, r3, m_Do_m_Do_machine_exception__stringBase0@l
/* 80017EB0  38 63 00 4A */	addi r3, r3, 0x4a
/* 80017EB4  56 E4 B2 BE */	srwi r4, r23, 0xa
/* 80017EB8  57 45 B2 BE */	srwi r5, r26, 0xa
/* 80017EBC  4C C6 31 82 */	crclr 6
/* 80017EC0  4B FF FE BD */	bl print_f__FPCce
/* 80017EC4  3C 60 80 37 */	lis r3, m_Do_m_Do_machine_exception__stringBase0@ha
/* 80017EC8  38 63 44 60 */	addi r3, r3, m_Do_m_Do_machine_exception__stringBase0@l
/* 80017ECC  38 63 00 5D */	addi r3, r3, 0x5d
/* 80017ED0  57 04 B2 BE */	srwi r4, r24, 0xa
/* 80017ED4  57 65 B2 BE */	srwi r5, r27, 0xa
/* 80017ED8  4C C6 31 82 */	crclr 6
/* 80017EDC  4B FF FE A1 */	bl print_f__FPCce
/* 80017EE0  3C 60 80 37 */	lis r3, m_Do_m_Do_machine_exception__stringBase0@ha
/* 80017EE4  38 63 44 60 */	addi r3, r3, m_Do_m_Do_machine_exception__stringBase0@l
/* 80017EE8  38 63 00 70 */	addi r3, r3, 0x70
/* 80017EEC  57 24 B2 BE */	srwi r4, r25, 0xa
/* 80017EF0  57 85 B2 BE */	srwi r5, r28, 0xa
/* 80017EF4  4C C6 31 82 */	crclr 6
/* 80017EF8  4B FF FE 85 */	bl print_f__FPCce
/* 80017EFC  3C 60 80 37 */	lis r3, m_Do_m_Do_machine_exception__stringBase0@ha
/* 80017F00  38 63 44 60 */	addi r3, r3, m_Do_m_Do_machine_exception__stringBase0@l
/* 80017F04  38 63 00 83 */	addi r3, r3, 0x83
/* 80017F08  4B FF FF 01 */	bl print__FPCc
/* 80017F0C  80 6D 8E 48 */	lwz r3, sAramObject__7JKRAram(r13)
/* 80017F10  80 63 00 94 */	lwz r3, 0x94(r3)
/* 80017F14  28 03 00 00 */	cmplwi r3, 0
/* 80017F18  41 82 00 08 */	beq lbl_80017F20
/* 80017F1C  48 2B B2 FD */	bl dump__11JKRAramHeapFv
lbl_80017F20:
/* 80017F20  48 24 A5 51 */	bl dump__24DynamicModuleControlBaseFv
/* 80017F24  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80017F28  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80017F2C  3C 63 00 02 */	addis r3, r3, 2
/* 80017F30  38 63 C2 F8 */	addi r3, r3, -15624
/* 80017F34  48 02 47 05 */	bl dump__14dRes_control_cFv
/* 80017F38  7F E3 FB 78 */	mr r3, r31
/* 80017F3C  81 9F 00 00 */	lwz r12, 0(r31)
/* 80017F40  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80017F44  7D 89 03 A6 */	mtctr r12
/* 80017F48  4E 80 04 21 */	bctrl 
/* 80017F4C  7F C3 F3 78 */	mr r3, r30
/* 80017F50  81 9E 00 00 */	lwz r12, 0(r30)
/* 80017F54  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80017F58  7D 89 03 A6 */	mtctr r12
/* 80017F5C  4E 80 04 21 */	bctrl 
/* 80017F60  7F A3 EB 78 */	mr r3, r29
/* 80017F64  81 9D 00 00 */	lwz r12, 0(r29)
/* 80017F68  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80017F6C  7D 89 03 A6 */	mtctr r12
/* 80017F70  4E 80 04 21 */	bctrl 
/* 80017F74  39 61 00 30 */	addi r11, r1, 0x30
/* 80017F78  48 34 A2 99 */	bl _restgpr_23
/* 80017F7C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80017F80  7C 08 03 A6 */	mtlr r0
/* 80017F84  38 21 00 30 */	addi r1, r1, 0x30
/* 80017F88  4E 80 00 20 */	blr 
