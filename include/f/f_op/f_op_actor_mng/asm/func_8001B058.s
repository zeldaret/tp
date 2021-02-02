/* 8001B058 00017F98  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 8001B05C 00017F9C  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 8001B060 00017FA0  80 63 5D AC */ lwz r3, 0x5dac(r3)
/* 8001B064 00017FA4  4E 80 00 20 */ blr
