lbl_804DD958:
/* 804DD958  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804DD95C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804DD960  80 03 5D B4 */	lwz r0, 0x5db4(r3)
/* 804DD964  7C 05 00 40 */	cmplw r5, r0
/* 804DD968  4C 82 00 20 */	bnelr 
/* 804DD96C  38 00 00 01 */	li r0, 1
/* 804DD970  98 04 0B 0D */	stb r0, 0xb0d(r4)
/* 804DD974  4E 80 00 20 */	blr 
