lbl_801E8CB0:
/* 801E8CB0  54 89 06 3E */	clrlwi r9, r4, 0x18
/* 801E8CB4  28 09 00 FF */	cmplwi r9, 0xff
/* 801E8CB8  4D 82 00 20 */	beqlr 
/* 801E8CBC  38 00 00 00 */	li r0, 0
/* 801E8CC0  54 84 15 BA */	rlwinm r4, r4, 2, 0x16, 0x1d
/* 801E8CC4  7D 03 22 14 */	add r8, r3, r4
/* 801E8CC8  80 88 01 EC */	lwz r4, 0x1ec(r8)
/* 801E8CCC  B0 04 00 16 */	sth r0, 0x16(r4)
/* 801E8CD0  80 88 01 F4 */	lwz r4, 0x1f4(r8)
/* 801E8CD4  B0 04 00 16 */	sth r0, 0x16(r4)
/* 801E8CD8  80 88 01 FC */	lwz r4, 0x1fc(r8)
/* 801E8CDC  B0 04 00 16 */	sth r0, 0x16(r4)
/* 801E8CE0  7C 63 4A 14 */	add r3, r3, r9
/* 801E8CE4  98 A3 03 FB */	stb r5, 0x3fb(r3)
/* 801E8CE8  98 C3 03 FD */	stb r6, 0x3fd(r3)
/* 801E8CEC  98 E3 03 FF */	stb r7, 0x3ff(r3)
/* 801E8CF0  80 68 01 E4 */	lwz r3, 0x1e4(r8)
/* 801E8CF4  B0 03 00 6A */	sth r0, 0x6a(r3)
/* 801E8CF8  4E 80 00 20 */	blr 
