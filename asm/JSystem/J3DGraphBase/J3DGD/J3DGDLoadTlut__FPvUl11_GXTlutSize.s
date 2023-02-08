lbl_8030E878:
/* 8030E878  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8030E87C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8030E880  39 20 00 61 */	li r9, 0x61
/* 8030E884  80 ED 94 00 */	lwz r7, __GDCurrentDL(r13)
/* 8030E888  80 C7 00 08 */	lwz r6, 8(r7)
/* 8030E88C  38 06 00 01 */	addi r0, r6, 1
/* 8030E890  90 07 00 08 */	stw r0, 8(r7)
/* 8030E894  99 26 00 00 */	stb r9, 0(r6)
/* 8030E898  39 00 00 FE */	li r8, 0xfe
/* 8030E89C  80 ED 94 00 */	lwz r7, __GDCurrentDL(r13)
/* 8030E8A0  80 C7 00 08 */	lwz r6, 8(r7)
/* 8030E8A4  38 06 00 01 */	addi r0, r6, 1
/* 8030E8A8  90 07 00 08 */	stw r0, 8(r7)
/* 8030E8AC  99 06 00 00 */	stb r8, 0(r6)
/* 8030E8B0  38 E0 00 FF */	li r7, 0xff
/* 8030E8B4  81 4D 94 00 */	lwz r10, __GDCurrentDL(r13)
/* 8030E8B8  80 CA 00 08 */	lwz r6, 8(r10)
/* 8030E8BC  38 06 00 01 */	addi r0, r6, 1
/* 8030E8C0  90 0A 00 08 */	stw r0, 8(r10)
/* 8030E8C4  98 E6 00 00 */	stb r7, 0(r6)
/* 8030E8C8  81 4D 94 00 */	lwz r10, __GDCurrentDL(r13)
/* 8030E8CC  80 CA 00 08 */	lwz r6, 8(r10)
/* 8030E8D0  38 06 00 01 */	addi r0, r6, 1
/* 8030E8D4  90 0A 00 08 */	stw r0, 8(r10)
/* 8030E8D8  98 E6 00 00 */	stb r7, 0(r6)
/* 8030E8DC  38 C0 00 00 */	li r6, 0
/* 8030E8E0  81 6D 94 00 */	lwz r11, __GDCurrentDL(r13)
/* 8030E8E4  81 4B 00 08 */	lwz r10, 8(r11)
/* 8030E8E8  38 0A 00 01 */	addi r0, r10, 1
/* 8030E8EC  90 0B 00 08 */	stw r0, 8(r11)
/* 8030E8F0  98 CA 00 00 */	stb r6, 0(r10)
/* 8030E8F4  81 6D 94 00 */	lwz r11, __GDCurrentDL(r13)
/* 8030E8F8  81 4B 00 08 */	lwz r10, 8(r11)
/* 8030E8FC  38 0A 00 01 */	addi r0, r10, 1
/* 8030E900  90 0B 00 08 */	stw r0, 8(r11)
/* 8030E904  99 2A 00 00 */	stb r9, 0(r10)
/* 8030E908  38 00 00 0F */	li r0, 0xf
/* 8030E90C  81 8D 94 00 */	lwz r12, __GDCurrentDL(r13)
/* 8030E910  81 6C 00 08 */	lwz r11, 8(r12)
/* 8030E914  39 4B 00 01 */	addi r10, r11, 1
/* 8030E918  91 4C 00 08 */	stw r10, 8(r12)
/* 8030E91C  98 0B 00 00 */	stb r0, 0(r11)
/* 8030E920  81 8D 94 00 */	lwz r12, __GDCurrentDL(r13)
/* 8030E924  81 6C 00 08 */	lwz r11, 8(r12)
/* 8030E928  39 4B 00 01 */	addi r10, r11, 1
/* 8030E92C  91 4C 00 08 */	stw r10, 8(r12)
/* 8030E930  98 CB 00 00 */	stb r6, 0(r11)
/* 8030E934  81 8D 94 00 */	lwz r12, __GDCurrentDL(r13)
/* 8030E938  81 6C 00 08 */	lwz r11, 8(r12)
/* 8030E93C  39 4B 00 01 */	addi r10, r11, 1
/* 8030E940  91 4C 00 08 */	stw r10, 8(r12)
/* 8030E944  98 CB 00 00 */	stb r6, 0(r11)
/* 8030E948  81 8D 94 00 */	lwz r12, __GDCurrentDL(r13)
/* 8030E94C  81 6C 00 08 */	lwz r11, 8(r12)
/* 8030E950  39 4B 00 01 */	addi r10, r11, 1
/* 8030E954  91 4C 00 08 */	stw r10, 8(r12)
/* 8030E958  98 CB 00 00 */	stb r6, 0(r11)
/* 8030E95C  81 8D 94 00 */	lwz r12, __GDCurrentDL(r13)
/* 8030E960  81 6C 00 08 */	lwz r11, 8(r12)
/* 8030E964  39 4B 00 01 */	addi r10, r11, 1
/* 8030E968  91 4C 00 08 */	stw r10, 8(r12)
/* 8030E96C  99 2B 00 00 */	stb r9, 0(r11)
/* 8030E970  3C 63 80 00 */	addis r3, r3, 0x8000
/* 8030E974  54 63 D9 7E */	srwi r3, r3, 5
/* 8030E978  64 7F 64 00 */	oris r31, r3, 0x6400
/* 8030E97C  57 EC 46 3E */	srwi r12, r31, 0x18
/* 8030E980  81 6D 94 00 */	lwz r11, __GDCurrentDL(r13)
/* 8030E984  81 4B 00 08 */	lwz r10, 8(r11)
/* 8030E988  38 6A 00 01 */	addi r3, r10, 1
/* 8030E98C  90 6B 00 08 */	stw r3, 8(r11)
/* 8030E990  99 8A 00 00 */	stb r12, 0(r10)
/* 8030E994  57 EC 86 3E */	rlwinm r12, r31, 0x10, 0x18, 0x1f
/* 8030E998  81 6D 94 00 */	lwz r11, __GDCurrentDL(r13)
/* 8030E99C  81 4B 00 08 */	lwz r10, 8(r11)
/* 8030E9A0  38 6A 00 01 */	addi r3, r10, 1
/* 8030E9A4  90 6B 00 08 */	stw r3, 8(r11)
/* 8030E9A8  99 8A 00 00 */	stb r12, 0(r10)
/* 8030E9AC  57 EC C6 3E */	rlwinm r12, r31, 0x18, 0x18, 0x1f
/* 8030E9B0  81 6D 94 00 */	lwz r11, __GDCurrentDL(r13)
/* 8030E9B4  81 4B 00 08 */	lwz r10, 8(r11)
/* 8030E9B8  38 6A 00 01 */	addi r3, r10, 1
/* 8030E9BC  90 6B 00 08 */	stw r3, 8(r11)
/* 8030E9C0  99 8A 00 00 */	stb r12, 0(r10)
/* 8030E9C4  81 6D 94 00 */	lwz r11, __GDCurrentDL(r13)
/* 8030E9C8  81 4B 00 08 */	lwz r10, 8(r11)
/* 8030E9CC  38 6A 00 01 */	addi r3, r10, 1
/* 8030E9D0  90 6B 00 08 */	stw r3, 8(r11)
/* 8030E9D4  9B EA 00 00 */	stb r31, 0(r10)
/* 8030E9D8  81 6D 94 00 */	lwz r11, __GDCurrentDL(r13)
/* 8030E9DC  81 4B 00 08 */	lwz r10, 8(r11)
/* 8030E9E0  38 6A 00 01 */	addi r3, r10, 1
/* 8030E9E4  90 6B 00 08 */	stw r3, 8(r11)
/* 8030E9E8  99 2A 00 00 */	stb r9, 0(r10)
/* 8030E9EC  3C 64 FF F8 */	addis r3, r4, 0xfff8
/* 8030E9F0  54 64 BA 7E */	srwi r4, r3, 9
/* 8030E9F4  54 A3 50 2A */	slwi r3, r5, 0xa
/* 8030E9F8  7C 83 1B 78 */	or r3, r4, r3
/* 8030E9FC  64 6B 65 00 */	oris r11, r3, 0x6500
/* 8030EA00  55 6A 46 3E */	srwi r10, r11, 0x18
/* 8030EA04  80 AD 94 00 */	lwz r5, __GDCurrentDL(r13)
/* 8030EA08  80 85 00 08 */	lwz r4, 8(r5)
/* 8030EA0C  38 64 00 01 */	addi r3, r4, 1
/* 8030EA10  90 65 00 08 */	stw r3, 8(r5)
/* 8030EA14  99 44 00 00 */	stb r10, 0(r4)
/* 8030EA18  55 6A 86 3E */	rlwinm r10, r11, 0x10, 0x18, 0x1f
/* 8030EA1C  80 AD 94 00 */	lwz r5, __GDCurrentDL(r13)
/* 8030EA20  80 85 00 08 */	lwz r4, 8(r5)
/* 8030EA24  38 64 00 01 */	addi r3, r4, 1
/* 8030EA28  90 65 00 08 */	stw r3, 8(r5)
/* 8030EA2C  99 44 00 00 */	stb r10, 0(r4)
/* 8030EA30  55 6A C6 3E */	rlwinm r10, r11, 0x18, 0x18, 0x1f
/* 8030EA34  80 AD 94 00 */	lwz r5, __GDCurrentDL(r13)
/* 8030EA38  80 85 00 08 */	lwz r4, 8(r5)
/* 8030EA3C  38 64 00 01 */	addi r3, r4, 1
/* 8030EA40  90 65 00 08 */	stw r3, 8(r5)
/* 8030EA44  99 44 00 00 */	stb r10, 0(r4)
/* 8030EA48  80 AD 94 00 */	lwz r5, __GDCurrentDL(r13)
/* 8030EA4C  80 85 00 08 */	lwz r4, 8(r5)
/* 8030EA50  38 64 00 01 */	addi r3, r4, 1
/* 8030EA54  90 65 00 08 */	stw r3, 8(r5)
/* 8030EA58  99 64 00 00 */	stb r11, 0(r4)
/* 8030EA5C  80 AD 94 00 */	lwz r5, __GDCurrentDL(r13)
/* 8030EA60  80 85 00 08 */	lwz r4, 8(r5)
/* 8030EA64  38 64 00 01 */	addi r3, r4, 1
/* 8030EA68  90 65 00 08 */	stw r3, 8(r5)
/* 8030EA6C  99 24 00 00 */	stb r9, 0(r4)
/* 8030EA70  80 AD 94 00 */	lwz r5, __GDCurrentDL(r13)
/* 8030EA74  80 85 00 08 */	lwz r4, 8(r5)
/* 8030EA78  38 64 00 01 */	addi r3, r4, 1
/* 8030EA7C  90 65 00 08 */	stw r3, 8(r5)
/* 8030EA80  99 04 00 00 */	stb r8, 0(r4)
/* 8030EA84  80 AD 94 00 */	lwz r5, __GDCurrentDL(r13)
/* 8030EA88  80 85 00 08 */	lwz r4, 8(r5)
/* 8030EA8C  38 64 00 01 */	addi r3, r4, 1
/* 8030EA90  90 65 00 08 */	stw r3, 8(r5)
/* 8030EA94  98 E4 00 00 */	stb r7, 0(r4)
/* 8030EA98  80 AD 94 00 */	lwz r5, __GDCurrentDL(r13)
/* 8030EA9C  80 85 00 08 */	lwz r4, 8(r5)
/* 8030EAA0  38 64 00 01 */	addi r3, r4, 1
/* 8030EAA4  90 65 00 08 */	stw r3, 8(r5)
/* 8030EAA8  98 E4 00 00 */	stb r7, 0(r4)
/* 8030EAAC  80 AD 94 00 */	lwz r5, __GDCurrentDL(r13)
/* 8030EAB0  80 85 00 08 */	lwz r4, 8(r5)
/* 8030EAB4  38 64 00 01 */	addi r3, r4, 1
/* 8030EAB8  90 65 00 08 */	stw r3, 8(r5)
/* 8030EABC  98 C4 00 00 */	stb r6, 0(r4)
/* 8030EAC0  80 AD 94 00 */	lwz r5, __GDCurrentDL(r13)
/* 8030EAC4  80 85 00 08 */	lwz r4, 8(r5)
/* 8030EAC8  38 64 00 01 */	addi r3, r4, 1
/* 8030EACC  90 65 00 08 */	stw r3, 8(r5)
/* 8030EAD0  99 24 00 00 */	stb r9, 0(r4)
/* 8030EAD4  80 AD 94 00 */	lwz r5, __GDCurrentDL(r13)
/* 8030EAD8  80 85 00 08 */	lwz r4, 8(r5)
/* 8030EADC  38 64 00 01 */	addi r3, r4, 1
/* 8030EAE0  90 65 00 08 */	stw r3, 8(r5)
/* 8030EAE4  98 04 00 00 */	stb r0, 0(r4)
/* 8030EAE8  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 8030EAEC  80 64 00 08 */	lwz r3, 8(r4)
/* 8030EAF0  38 03 00 01 */	addi r0, r3, 1
/* 8030EAF4  90 04 00 08 */	stw r0, 8(r4)
/* 8030EAF8  98 C3 00 00 */	stb r6, 0(r3)
/* 8030EAFC  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 8030EB00  80 64 00 08 */	lwz r3, 8(r4)
/* 8030EB04  38 03 00 01 */	addi r0, r3, 1
/* 8030EB08  90 04 00 08 */	stw r0, 8(r4)
/* 8030EB0C  98 C3 00 00 */	stb r6, 0(r3)
/* 8030EB10  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 8030EB14  80 64 00 08 */	lwz r3, 8(r4)
/* 8030EB18  38 03 00 01 */	addi r0, r3, 1
/* 8030EB1C  90 04 00 08 */	stw r0, 8(r4)
/* 8030EB20  98 C3 00 00 */	stb r6, 0(r3)
/* 8030EB24  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8030EB28  38 21 00 10 */	addi r1, r1, 0x10
/* 8030EB2C  4E 80 00 20 */	blr 
