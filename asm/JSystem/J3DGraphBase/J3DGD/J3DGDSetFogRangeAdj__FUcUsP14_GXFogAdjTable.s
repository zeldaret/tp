lbl_8030F994:
/* 8030F994  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8030F998  41 82 00 BC */	beq lbl_8030FA54
/* 8030F99C  38 C0 00 00 */	li r6, 0
/* 8030F9A0  38 E0 00 00 */	li r7, 0
/* 8030F9A4  38 00 00 05 */	li r0, 5
/* 8030F9A8  7C 09 03 A6 */	mtctr r0
lbl_8030F9AC:
/* 8030F9AC  7D 25 3A 14 */	add r9, r5, r7
/* 8030F9B0  7C C0 0E 70 */	srawi r0, r6, 1
/* 8030F9B4  7D 00 01 94 */	addze r8, r0
/* 8030F9B8  38 08 00 E9 */	addi r0, r8, 0xe9
/* 8030F9BC  54 08 C0 0E */	slwi r8, r0, 0x18
/* 8030F9C0  A0 09 00 02 */	lhz r0, 2(r9)
/* 8030F9C4  54 00 60 26 */	slwi r0, r0, 0xc
/* 8030F9C8  7D 08 03 78 */	or r8, r8, r0
/* 8030F9CC  A0 09 00 00 */	lhz r0, 0(r9)
/* 8030F9D0  7D 0B 03 78 */	or r11, r8, r0
/* 8030F9D4  39 40 00 61 */	li r10, 0x61
/* 8030F9D8  81 2D 94 00 */	lwz r9, __GDCurrentDL(r13)
/* 8030F9DC  81 09 00 08 */	lwz r8, 8(r9)
/* 8030F9E0  38 08 00 01 */	addi r0, r8, 1
/* 8030F9E4  90 09 00 08 */	stw r0, 8(r9)
/* 8030F9E8  99 48 00 00 */	stb r10, 0(r8)
/* 8030F9EC  55 6A 46 3E */	srwi r10, r11, 0x18
/* 8030F9F0  81 2D 94 00 */	lwz r9, __GDCurrentDL(r13)
/* 8030F9F4  81 09 00 08 */	lwz r8, 8(r9)
/* 8030F9F8  38 08 00 01 */	addi r0, r8, 1
/* 8030F9FC  90 09 00 08 */	stw r0, 8(r9)
/* 8030FA00  99 48 00 00 */	stb r10, 0(r8)
/* 8030FA04  55 6A 86 3E */	rlwinm r10, r11, 0x10, 0x18, 0x1f
/* 8030FA08  81 2D 94 00 */	lwz r9, __GDCurrentDL(r13)
/* 8030FA0C  81 09 00 08 */	lwz r8, 8(r9)
/* 8030FA10  38 08 00 01 */	addi r0, r8, 1
/* 8030FA14  90 09 00 08 */	stw r0, 8(r9)
/* 8030FA18  99 48 00 00 */	stb r10, 0(r8)
/* 8030FA1C  55 6A C6 3E */	rlwinm r10, r11, 0x18, 0x18, 0x1f
/* 8030FA20  81 2D 94 00 */	lwz r9, __GDCurrentDL(r13)
/* 8030FA24  81 09 00 08 */	lwz r8, 8(r9)
/* 8030FA28  38 08 00 01 */	addi r0, r8, 1
/* 8030FA2C  90 09 00 08 */	stw r0, 8(r9)
/* 8030FA30  99 48 00 00 */	stb r10, 0(r8)
/* 8030FA34  81 2D 94 00 */	lwz r9, __GDCurrentDL(r13)
/* 8030FA38  81 09 00 08 */	lwz r8, 8(r9)
/* 8030FA3C  38 08 00 01 */	addi r0, r8, 1
/* 8030FA40  90 09 00 08 */	stw r0, 8(r9)
/* 8030FA44  99 68 00 00 */	stb r11, 0(r8)
/* 8030FA48  38 C6 00 02 */	addi r6, r6, 2
/* 8030FA4C  38 E7 00 04 */	addi r7, r7, 4
/* 8030FA50  42 00 FF 5C */	bdnz lbl_8030F9AC
lbl_8030FA54:
/* 8030FA54  54 84 04 3E */	clrlwi r4, r4, 0x10
/* 8030FA58  38 04 01 56 */	addi r0, r4, 0x156
/* 8030FA5C  64 04 E8 00 */	oris r4, r0, 0xe800
/* 8030FA60  54 60 53 AA */	rlwinm r0, r3, 0xa, 0xe, 0x15
/* 8030FA64  7C 86 03 78 */	or r6, r4, r0
/* 8030FA68  38 A0 00 61 */	li r5, 0x61
/* 8030FA6C  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 8030FA70  80 64 00 08 */	lwz r3, 8(r4)
/* 8030FA74  38 03 00 01 */	addi r0, r3, 1
/* 8030FA78  90 04 00 08 */	stw r0, 8(r4)
/* 8030FA7C  98 A3 00 00 */	stb r5, 0(r3)
/* 8030FA80  54 C5 46 3E */	srwi r5, r6, 0x18
/* 8030FA84  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 8030FA88  80 64 00 08 */	lwz r3, 8(r4)
/* 8030FA8C  38 03 00 01 */	addi r0, r3, 1
/* 8030FA90  90 04 00 08 */	stw r0, 8(r4)
/* 8030FA94  98 A3 00 00 */	stb r5, 0(r3)
/* 8030FA98  54 C5 86 3E */	rlwinm r5, r6, 0x10, 0x18, 0x1f
/* 8030FA9C  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 8030FAA0  80 64 00 08 */	lwz r3, 8(r4)
/* 8030FAA4  38 03 00 01 */	addi r0, r3, 1
/* 8030FAA8  90 04 00 08 */	stw r0, 8(r4)
/* 8030FAAC  98 A3 00 00 */	stb r5, 0(r3)
/* 8030FAB0  54 C5 C6 3E */	rlwinm r5, r6, 0x18, 0x18, 0x1f
/* 8030FAB4  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 8030FAB8  80 64 00 08 */	lwz r3, 8(r4)
/* 8030FABC  38 03 00 01 */	addi r0, r3, 1
/* 8030FAC0  90 04 00 08 */	stw r0, 8(r4)
/* 8030FAC4  98 A3 00 00 */	stb r5, 0(r3)
/* 8030FAC8  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 8030FACC  80 64 00 08 */	lwz r3, 8(r4)
/* 8030FAD0  38 03 00 01 */	addi r0, r3, 1
/* 8030FAD4  90 04 00 08 */	stw r0, 8(r4)
/* 8030FAD8  98 C3 00 00 */	stb r6, 0(r3)
/* 8030FADC  4E 80 00 20 */	blr 
