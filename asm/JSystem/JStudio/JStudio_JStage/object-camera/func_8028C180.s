lbl_8028C180:
/* 8028C180  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 8028C184  7C 08 02 A6 */	mflr r0
/* 8028C188  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 8028C18C  93 E1 00 AC */	stw r31, 0xac(r1)
/* 8028C190  93 C1 00 A8 */	stw r30, 0xa8(r1)
/* 8028C194  3C 60 80 43 */	lis r3, lit_1018@ha /* 0x80431298@ha */
/* 8028C198  3B C3 12 98 */	addi r30, r3, lit_1018@l /* 0x80431298@l */
/* 8028C19C  3C 60 80 3C */	lis r3, lit_1014@ha /* 0x803C58A8@ha */
/* 8028C1A0  3B E3 58 A8 */	addi r31, r3, lit_1014@l /* 0x803C58A8@l */
/* 8028C1A4  3C 60 80 3C */	lis r3, __vt__Q37JStudio14TVariableValue7TOutput@ha /* 0x803C5640@ha */
/* 8028C1A8  39 43 56 40 */	addi r10, r3, __vt__Q37JStudio14TVariableValue7TOutput@l /* 0x803C5640@l */
/* 8028C1AC  91 41 00 88 */	stw r10, 0x88(r1)
/* 8028C1B0  3C 60 80 3C */	lis r3, data_803C5980@ha /* 0x803C5980@ha */
/* 8028C1B4  38 63 59 80 */	addi r3, r3, data_803C5980@l /* 0x803C5980@l */
/* 8028C1B8  90 61 00 88 */	stw r3, 0x88(r1)
/* 8028C1BC  39 20 00 07 */	li r9, 7
/* 8028C1C0  91 21 00 8C */	stw r9, 0x8c(r1)
/* 8028C1C4  81 1F 00 00 */	lwz r8, 0(r31)
/* 8028C1C8  80 FF 00 04 */	lwz r7, 4(r31)
/* 8028C1CC  91 01 00 90 */	stw r8, 0x90(r1)
/* 8028C1D0  90 E1 00 94 */	stw r7, 0x94(r1)
/* 8028C1D4  80 DF 00 08 */	lwz r6, 8(r31)
/* 8028C1D8  90 C1 00 98 */	stw r6, 0x98(r1)
/* 8028C1DC  80 BF 00 0C */	lwz r5, 0xc(r31)
/* 8028C1E0  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 8028C1E4  90 A1 00 9C */	stw r5, 0x9c(r1)
/* 8028C1E8  90 81 00 A0 */	stw r4, 0xa0(r1)
/* 8028C1EC  80 1F 00 14 */	lwz r0, 0x14(r31)
/* 8028C1F0  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 8028C1F4  91 5E 00 3C */	stw r10, 0x3c(r30)
/* 8028C1F8  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 8028C1FC  38 7E 00 3C */	addi r3, r30, 0x3c
/* 8028C200  91 23 00 04 */	stw r9, 4(r3)
/* 8028C204  91 03 00 08 */	stw r8, 8(r3)
/* 8028C208  90 E3 00 0C */	stw r7, 0xc(r3)
/* 8028C20C  90 C3 00 10 */	stw r6, 0x10(r3)
/* 8028C210  90 A3 00 14 */	stw r5, 0x14(r3)
/* 8028C214  90 83 00 18 */	stw r4, 0x18(r3)
/* 8028C218  90 03 00 1C */	stw r0, 0x1c(r3)
/* 8028C21C  3C 80 80 29 */	lis r4, func_8028C4E4@ha /* 0x8028C4E4@ha */
/* 8028C220  38 84 C4 E4 */	addi r4, r4, func_8028C4E4@l /* 0x8028C4E4@l */
/* 8028C224  38 BE 00 00 */	addi r5, r30, 0
/* 8028C228  48 0D 59 FD */	bl __register_global_object
/* 8028C22C  3C 60 80 3C */	lis r3, data_803C5980@ha /* 0x803C5980@ha */
/* 8028C230  38 03 59 80 */	addi r0, r3, data_803C5980@l /* 0x803C5980@l */
/* 8028C234  90 01 00 88 */	stw r0, 0x88(r1)
/* 8028C238  38 61 00 88 */	addi r3, r1, 0x88
/* 8028C23C  38 80 00 00 */	li r4, 0
/* 8028C240  4B FF 9B CD */	bl __dt__Q37JStudio14TVariableValue7TOutputFv
/* 8028C244  3C 60 80 3C */	lis r3, __vt__Q37JStudio14TVariableValue7TOutput@ha /* 0x803C5640@ha */
/* 8028C248  39 63 56 40 */	addi r11, r3, __vt__Q37JStudio14TVariableValue7TOutput@l /* 0x803C5640@l */
/* 8028C24C  91 61 00 68 */	stw r11, 0x68(r1)
/* 8028C250  3C 60 80 3C */	lis r3, data_803C5980@ha /* 0x803C5980@ha */
/* 8028C254  39 43 59 80 */	addi r10, r3, data_803C5980@l /* 0x803C5980@l */
/* 8028C258  91 41 00 68 */	stw r10, 0x68(r1)
/* 8028C25C  39 20 00 06 */	li r9, 6
/* 8028C260  91 21 00 6C */	stw r9, 0x6c(r1)
/* 8028C264  81 1F 00 18 */	lwz r8, 0x18(r31)
/* 8028C268  80 FF 00 1C */	lwz r7, 0x1c(r31)
/* 8028C26C  91 01 00 70 */	stw r8, 0x70(r1)
/* 8028C270  90 E1 00 74 */	stw r7, 0x74(r1)
/* 8028C274  80 DF 00 20 */	lwz r6, 0x20(r31)
/* 8028C278  90 C1 00 78 */	stw r6, 0x78(r1)
/* 8028C27C  80 BF 00 24 */	lwz r5, 0x24(r31)
/* 8028C280  80 9F 00 28 */	lwz r4, 0x28(r31)
/* 8028C284  90 A1 00 7C */	stw r5, 0x7c(r1)
/* 8028C288  90 81 00 80 */	stw r4, 0x80(r1)
/* 8028C28C  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 8028C290  90 01 00 84 */	stw r0, 0x84(r1)
/* 8028C294  38 7E 00 3C */	addi r3, r30, 0x3c
/* 8028C298  91 63 00 20 */	stw r11, 0x20(r3)
/* 8028C29C  91 43 00 20 */	stw r10, 0x20(r3)
/* 8028C2A0  91 23 00 24 */	stw r9, 0x24(r3)
/* 8028C2A4  91 03 00 28 */	stw r8, 0x28(r3)
/* 8028C2A8  90 E3 00 2C */	stw r7, 0x2c(r3)
/* 8028C2AC  90 C3 00 30 */	stw r6, 0x30(r3)
/* 8028C2B0  90 A3 00 34 */	stw r5, 0x34(r3)
/* 8028C2B4  90 83 00 38 */	stw r4, 0x38(r3)
/* 8028C2B8  90 03 00 3C */	stw r0, 0x3c(r3)
/* 8028C2BC  38 63 00 20 */	addi r3, r3, 0x20
/* 8028C2C0  3C 80 80 29 */	lis r4, func_8028C4E4@ha /* 0x8028C4E4@ha */
/* 8028C2C4  38 84 C4 E4 */	addi r4, r4, func_8028C4E4@l /* 0x8028C4E4@l */
/* 8028C2C8  38 BE 00 0C */	addi r5, r30, 0xc
/* 8028C2CC  48 0D 59 59 */	bl __register_global_object
/* 8028C2D0  3C 60 80 3C */	lis r3, data_803C5980@ha /* 0x803C5980@ha */
/* 8028C2D4  38 03 59 80 */	addi r0, r3, data_803C5980@l /* 0x803C5980@l */
/* 8028C2D8  90 01 00 68 */	stw r0, 0x68(r1)
/* 8028C2DC  38 61 00 68 */	addi r3, r1, 0x68
/* 8028C2E0  38 80 00 00 */	li r4, 0
/* 8028C2E4  4B FF 9B 29 */	bl __dt__Q37JStudio14TVariableValue7TOutputFv
/* 8028C2E8  3C 60 80 3C */	lis r3, __vt__Q37JStudio14TVariableValue7TOutput@ha /* 0x803C5640@ha */
/* 8028C2EC  39 63 56 40 */	addi r11, r3, __vt__Q37JStudio14TVariableValue7TOutput@l /* 0x803C5640@l */
/* 8028C2F0  91 61 00 48 */	stw r11, 0x48(r1)
/* 8028C2F4  3C 60 80 3C */	lis r3, data_803C5980@ha /* 0x803C5980@ha */
/* 8028C2F8  39 43 59 80 */	addi r10, r3, data_803C5980@l /* 0x803C5980@l */
/* 8028C2FC  91 41 00 48 */	stw r10, 0x48(r1)
/* 8028C300  39 20 00 08 */	li r9, 8
/* 8028C304  91 21 00 4C */	stw r9, 0x4c(r1)
/* 8028C308  81 1F 00 30 */	lwz r8, 0x30(r31)
/* 8028C30C  80 FF 00 34 */	lwz r7, 0x34(r31)
/* 8028C310  91 01 00 50 */	stw r8, 0x50(r1)
/* 8028C314  90 E1 00 54 */	stw r7, 0x54(r1)
/* 8028C318  80 DF 00 38 */	lwz r6, 0x38(r31)
/* 8028C31C  90 C1 00 58 */	stw r6, 0x58(r1)
/* 8028C320  80 BF 00 3C */	lwz r5, 0x3c(r31)
/* 8028C324  80 9F 00 40 */	lwz r4, 0x40(r31)
/* 8028C328  90 A1 00 5C */	stw r5, 0x5c(r1)
/* 8028C32C  90 81 00 60 */	stw r4, 0x60(r1)
/* 8028C330  80 1F 00 44 */	lwz r0, 0x44(r31)
/* 8028C334  90 01 00 64 */	stw r0, 0x64(r1)
/* 8028C338  38 7E 00 3C */	addi r3, r30, 0x3c
/* 8028C33C  91 63 00 40 */	stw r11, 0x40(r3)
/* 8028C340  91 43 00 40 */	stw r10, 0x40(r3)
/* 8028C344  91 23 00 44 */	stw r9, 0x44(r3)
/* 8028C348  91 03 00 48 */	stw r8, 0x48(r3)
/* 8028C34C  90 E3 00 4C */	stw r7, 0x4c(r3)
/* 8028C350  90 C3 00 50 */	stw r6, 0x50(r3)
/* 8028C354  90 A3 00 54 */	stw r5, 0x54(r3)
/* 8028C358  90 83 00 58 */	stw r4, 0x58(r3)
/* 8028C35C  90 03 00 5C */	stw r0, 0x5c(r3)
/* 8028C360  38 63 00 40 */	addi r3, r3, 0x40
/* 8028C364  3C 80 80 29 */	lis r4, func_8028C4E4@ha /* 0x8028C4E4@ha */
/* 8028C368  38 84 C4 E4 */	addi r4, r4, func_8028C4E4@l /* 0x8028C4E4@l */
/* 8028C36C  38 BE 00 18 */	addi r5, r30, 0x18
/* 8028C370  48 0D 58 B5 */	bl __register_global_object
/* 8028C374  3C 60 80 3C */	lis r3, data_803C5980@ha /* 0x803C5980@ha */
/* 8028C378  38 03 59 80 */	addi r0, r3, data_803C5980@l /* 0x803C5980@l */
/* 8028C37C  90 01 00 48 */	stw r0, 0x48(r1)
/* 8028C380  38 61 00 48 */	addi r3, r1, 0x48
/* 8028C384  38 80 00 00 */	li r4, 0
/* 8028C388  4B FF 9A 85 */	bl __dt__Q37JStudio14TVariableValue7TOutputFv
/* 8028C38C  3C 60 80 3C */	lis r3, __vt__Q37JStudio14TVariableValue7TOutput@ha /* 0x803C5640@ha */
/* 8028C390  39 63 56 40 */	addi r11, r3, __vt__Q37JStudio14TVariableValue7TOutput@l /* 0x803C5640@l */
/* 8028C394  91 61 00 28 */	stw r11, 0x28(r1)
/* 8028C398  3C 60 80 3C */	lis r3, data_803C5980@ha /* 0x803C5980@ha */
/* 8028C39C  39 43 59 80 */	addi r10, r3, data_803C5980@l /* 0x803C5980@l */
/* 8028C3A0  91 41 00 28 */	stw r10, 0x28(r1)
/* 8028C3A4  39 20 00 09 */	li r9, 9
/* 8028C3A8  91 21 00 2C */	stw r9, 0x2c(r1)
/* 8028C3AC  81 1F 00 48 */	lwz r8, 0x48(r31)
/* 8028C3B0  80 FF 00 4C */	lwz r7, 0x4c(r31)
/* 8028C3B4  91 01 00 30 */	stw r8, 0x30(r1)
/* 8028C3B8  90 E1 00 34 */	stw r7, 0x34(r1)
/* 8028C3BC  80 DF 00 50 */	lwz r6, 0x50(r31)
/* 8028C3C0  90 C1 00 38 */	stw r6, 0x38(r1)
/* 8028C3C4  80 BF 00 54 */	lwz r5, 0x54(r31)
/* 8028C3C8  80 9F 00 58 */	lwz r4, 0x58(r31)
/* 8028C3CC  90 A1 00 3C */	stw r5, 0x3c(r1)
/* 8028C3D0  90 81 00 40 */	stw r4, 0x40(r1)
/* 8028C3D4  80 1F 00 5C */	lwz r0, 0x5c(r31)
/* 8028C3D8  90 01 00 44 */	stw r0, 0x44(r1)
/* 8028C3DC  38 7E 00 3C */	addi r3, r30, 0x3c
/* 8028C3E0  91 63 00 60 */	stw r11, 0x60(r3)
/* 8028C3E4  91 43 00 60 */	stw r10, 0x60(r3)
/* 8028C3E8  91 23 00 64 */	stw r9, 0x64(r3)
/* 8028C3EC  91 03 00 68 */	stw r8, 0x68(r3)
/* 8028C3F0  90 E3 00 6C */	stw r7, 0x6c(r3)
/* 8028C3F4  90 C3 00 70 */	stw r6, 0x70(r3)
/* 8028C3F8  90 A3 00 74 */	stw r5, 0x74(r3)
/* 8028C3FC  90 83 00 78 */	stw r4, 0x78(r3)
/* 8028C400  90 03 00 7C */	stw r0, 0x7c(r3)
/* 8028C404  38 63 00 60 */	addi r3, r3, 0x60
/* 8028C408  3C 80 80 29 */	lis r4, func_8028C4E4@ha /* 0x8028C4E4@ha */
/* 8028C40C  38 84 C4 E4 */	addi r4, r4, func_8028C4E4@l /* 0x8028C4E4@l */
/* 8028C410  38 BE 00 24 */	addi r5, r30, 0x24
/* 8028C414  48 0D 58 11 */	bl __register_global_object
/* 8028C418  3C 60 80 3C */	lis r3, data_803C5980@ha /* 0x803C5980@ha */
/* 8028C41C  38 03 59 80 */	addi r0, r3, data_803C5980@l /* 0x803C5980@l */
/* 8028C420  90 01 00 28 */	stw r0, 0x28(r1)
/* 8028C424  38 61 00 28 */	addi r3, r1, 0x28
/* 8028C428  38 80 00 00 */	li r4, 0
/* 8028C42C  4B FF 99 E1 */	bl __dt__Q37JStudio14TVariableValue7TOutputFv
/* 8028C430  3C 60 80 3C */	lis r3, __vt__Q37JStudio14TVariableValue7TOutput@ha /* 0x803C5640@ha */
/* 8028C434  39 03 56 40 */	addi r8, r3, __vt__Q37JStudio14TVariableValue7TOutput@l /* 0x803C5640@l */
/* 8028C438  91 01 00 08 */	stw r8, 8(r1)
/* 8028C43C  3C 60 80 3C */	lis r3, data_803C5980@ha /* 0x803C5980@ha */
/* 8028C440  38 E3 59 80 */	addi r7, r3, data_803C5980@l /* 0x803C5980@l */
/* 8028C444  90 E1 00 08 */	stw r7, 8(r1)
/* 8028C448  38 C0 FF FF */	li r6, -1
/* 8028C44C  90 C1 00 0C */	stw r6, 0xc(r1)
/* 8028C450  3C 60 80 3A */	lis r3, __ptmf_null@ha /* 0x803A2180@ha */
/* 8028C454  84 A3 21 80 */	lwzu r5, __ptmf_null@l(r3)  /* 0x803A2180@l */
/* 8028C458  80 83 00 04 */	lwz r4, 4(r3)
/* 8028C45C  90 A1 00 10 */	stw r5, 0x10(r1)
/* 8028C460  90 81 00 14 */	stw r4, 0x14(r1)
/* 8028C464  80 03 00 08 */	lwz r0, 8(r3)
/* 8028C468  90 01 00 18 */	stw r0, 0x18(r1)
/* 8028C46C  90 A1 00 1C */	stw r5, 0x1c(r1)
/* 8028C470  90 81 00 20 */	stw r4, 0x20(r1)
/* 8028C474  90 01 00 24 */	stw r0, 0x24(r1)
/* 8028C478  38 7E 00 3C */	addi r3, r30, 0x3c
/* 8028C47C  91 03 00 80 */	stw r8, 0x80(r3)
/* 8028C480  90 E3 00 80 */	stw r7, 0x80(r3)
/* 8028C484  90 C3 00 84 */	stw r6, 0x84(r3)
/* 8028C488  90 A3 00 88 */	stw r5, 0x88(r3)
/* 8028C48C  90 83 00 8C */	stw r4, 0x8c(r3)
/* 8028C490  90 03 00 90 */	stw r0, 0x90(r3)
/* 8028C494  90 A3 00 94 */	stw r5, 0x94(r3)
/* 8028C498  90 83 00 98 */	stw r4, 0x98(r3)
/* 8028C49C  90 03 00 9C */	stw r0, 0x9c(r3)
/* 8028C4A0  38 63 00 80 */	addi r3, r3, 0x80
/* 8028C4A4  3C 80 80 29 */	lis r4, func_8028C4E4@ha /* 0x8028C4E4@ha */
/* 8028C4A8  38 84 C4 E4 */	addi r4, r4, func_8028C4E4@l /* 0x8028C4E4@l */
/* 8028C4AC  38 BE 00 30 */	addi r5, r30, 0x30
/* 8028C4B0  48 0D 57 75 */	bl __register_global_object
/* 8028C4B4  3C 60 80 3C */	lis r3, data_803C5980@ha /* 0x803C5980@ha */
/* 8028C4B8  38 03 59 80 */	addi r0, r3, data_803C5980@l /* 0x803C5980@l */
/* 8028C4BC  90 01 00 08 */	stw r0, 8(r1)
/* 8028C4C0  38 61 00 08 */	addi r3, r1, 8
/* 8028C4C4  38 80 00 00 */	li r4, 0
/* 8028C4C8  4B FF 99 45 */	bl __dt__Q37JStudio14TVariableValue7TOutputFv
/* 8028C4CC  83 E1 00 AC */	lwz r31, 0xac(r1)
/* 8028C4D0  83 C1 00 A8 */	lwz r30, 0xa8(r1)
/* 8028C4D4  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 8028C4D8  7C 08 03 A6 */	mtlr r0
/* 8028C4DC  38 21 00 B0 */	addi r1, r1, 0xb0
/* 8028C4E0  4E 80 00 20 */	blr 
